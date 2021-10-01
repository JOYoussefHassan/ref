# import
import os, sys, datetime, getpass
sys.path.append("/storage/emulated/0/jo_modules")
from encybration import _enc, _unc
# data
_pth = "/home/jo/Desktop/Projects/log.txt"
_flr = open(_pth, "r")
_dta = _unc("".join(_flr.readlines())).split("\n")
# welcome
print(("#" * 100) + "\n" + ("#" + "Welcome to PAYMENT_TABLE.JO logging".center(98) + "#") + "\n" + ("#" * 100))
_doc = "# These is the document of PAYMENT_TABLE.JO\n# [1] - Commands :-\n#\tAdd method\t\t: a [s]<coast>\n#\tRemove method\t\t: r <indexNumber>\n#\tHelp method\t\t: h\n#\tExit\t\t\t: e\n#\n# [2] - Types :-\n#\t[REM]\t\t\t: payment\n#\t[SAL]\t\t\t: salary\n#\t[NOT]\t\t\t: nothing salary or payment"
print(_doc)
## password
_pas = getpass.getpass("Password> ")
_rot = ""
## ensure login
if _pas == _rot :
    print("# Successfully login")
## function
def _pay(_cmd, _dta) :
    _dat = datetime.datetime.now().strftime(r"%Y/%m/%d - %H:%M:%S")
    ## add
    if _cmd[0].lower() in ["add", "a"] :
        try :       # commands of add method
            if _cmd[1][0] == "s" and float(_cmd[1][1:]) == 0 :  # nothing payment
                _dta = _dta.append(f"[NOT] ==> {_dat} ==> {float(_cmd[1][1:])} ==> ")
            elif _cmd[1][0] == "s" :                            # salary
                _dta = _dta.append(f"[SAL] ==> {_dat} ==> {float(_cmd[1][1:])} ==> ")
            elif float(_cmd[1]) == 0 :                          # nothing payment
                _dta = _dta.append(f"[NOT] ==> {_dat} ==> {float(_cmd[1])} ==> ")
            elif float(_cmd[1]) > 0 :                           # payment
                _dta = _dta.append(f"[REM] ==> {_dat} ==> {float(_cmd[1])} ==> ")
            else :                                              # none of the above
                raise IndexError()
        except :    # error
            print("# Wrong syntax\n# The syntax is : a [s]<coast>")
    ## remove
    elif _cmd[0].lower() in ["remove", "r"] :
        try :       # commands of remove method
            n = int(_cmd[1]) - 1
            if n < len(_dta) and n > 0 :                        # remove
                _dta.pop(n)
            else :                                              # out of range
                print("# Out of range")
        except :    # error
            print("# Wrong syntax\n# The syntax is : r <indexNumber>")
    ## show
    elif _cmd[0].lower() in ["show", "s"] :
        print("-" * 100 + "\n|" + "DATA".center(98) + "|\n" + "-" * 100 + "\n| No. | Type  | " + "Date".ljust(22) + "| " + "Cost".ljust(13) + " | Discription".ljust(46) + "|\n" + "-" * 100)
        y = 0
        for i in _dta :                                         # table
            x = i.split(" ==> ")
            y += 1
            print(f"| {str(y).zfill(3)} | {x[0]} | {x[1]} | {x[2].ljust(13)} | {x[3]}")
            print("-" * 100)
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
            print("# Goodbye :)\n\n© 2021 PAYMENT_TABLE.JO v3.1.2\nPowerd by JO")
            break
        _pay(_cmd, _dta)
    else :
        # wrong
        print("# Wrong password")
        _pas = getpass.getpass("Password> ")
        ## ensure login
        if _pas == _rot :
            print("# Successfully login")
# encybrate the file and close
_dta = _enc("\n".join(_dta), True)
_flw = open(_pth, "w")
_flw.write(_dta)
_flw.close()
