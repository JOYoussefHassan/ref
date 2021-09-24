# import
import datetime, os
_pth = str(os.path.dirname(os.path.abspath(__file__))) + "/log.txt"
# welcome
print(("#" * 100) + "\n" + ("#" + "Welcome to PAYMENT_TABLE.JO logging".center(98) + "#") + "\n" + ("#" * 100))
_doc = "# Please use these commands \\ Add (a), Remove (r), Show (s), Help (h) or Exit (e)"
print(_doc)
## password
_pas = input("Password> ")
_rot = "760320"
## ensure login
if _pas == _rot :
    print("# Successfully login")
## function
def _pay(_cmd, _pass) :
    # file
    _flw = open(_pth, "a")
    _flr = open(_pth, "r")
    # command
    ## add
    if _cmd[0].lower() in ["add", "a"] :
        try :
            # date
            _dat = datetime.datetime.now().strftime(r"%Y/%m/%d - %H:%M:%S")
            ## nothing salary
            if _cmd[1][0] == "s" and int(_cmd[1][1:]) == 0 :
                _flw.write(f"[NOT] ==> {_dat} ==> {int(_cmd[1][1:])} ==> ")
            ## salary
            elif _cmd[1][0] == "s" :
                _flw.write(f"[SAL] ==> {_dat} ==> {int(_cmd[1][1:])} ==> ")
            ## nothing payment
            elif int(_cmd[1]) == 0 :
                _flw.write(f"[NOT] ==> {_dat} ==> {int(_cmd[1])} ==> ")
            ## payment
            else :
                _flw.write(f"[REM] ==> {_dat} ==> {int(_cmd[1].ljust(10))} ==> ")
            ## discription
            try :
                _flw.write(_cmd[2] + "\n")
            except :
                _flw.write("\n")
            _flw.close()
            # ensure added
            print("# Successfully added")
        except :
            print("# Wrong syntax\n# The syntax is : a [s]<number> [discription]")
    ## remove
    elif _cmd[0].lower() in ["remove", "r"] :
        try :
            # data
            _txt = _flr.readlines()
            ## out of range
            if len(_txt) - 1 < int(_cmd[1]) or int(_cmd[1]) <= 0 :
                print("# Out of range")
            else :
                _flc = open(_pth, "w")
                _txt.pop(int(_cmd[1]))
                _txt = "".join(_txt)
                _flc.write("")
                _flc.close()
                _flw.write(_txt)
                _flw.close()
                # ensure removed
                print("# Successfully removed")
        except :
            print("# Wrong syntax\n# The syntax is : r <indexNumber>")
    ## show
    elif _cmd[0].lower() in ["show", "s"] :
        # main of table
        print("-" * 100 + "\n|" + "DATA".center(98) + "|\n" + "-" * 100 + "\n| No. | Type  | " + "Date".ljust(22) + "| " + "Cost".ljust(10) + " | Discription".ljust(49) + "|\n" + "-" * 100)
        x = 1
        # cells of table
        for i in _flr.readlines()[1:] :
            _dat = i.split(" ==> ")
            print(f"| {str(x).zfill(3)} | {_dat[0]} | {_dat[1]} | {_dat[2].ljust(10)} | {_dat[3]}", end = "")
            x += 1
            print("-" * 100)
        _flw.close()
    ## help
    elif _cmd[0].lower() in ["help", "h"] :
        print(_doc)
    ## another character
    elif _cmd[0].lower() != "" :
        print("# Wrong syntax\n# The syntax is : Add (a), Remove (r), Show (s), Help (h), or Exit (e)")
    _flr.close()
## login
while True :
    if _pas == _rot :
        # input
        _cmd = input("PAYMENT_TABLE.JO> ").split(" ", 2)
        ## exit
        if _cmd[0].lower() in ["exit", "e"] :
            print("# Goodbye :)\n\n© 2021 PAYMENT_TABLE.JO v2.1.1\nPowerd by JO")
            break
        _pay(_cmd, _pas)
    else :
        # wrong
        print("# Wrong password")
        _pas = input("Password> ")
