# import
import datetime, os
_pth = str(os.path.dirname(os.path.abspath(__file__))) + "/log.txt"
# welcome
print(_pth)
print(("#" * 75) + "\n" + ("#" + "Welcome to PAYMENT_TABLE logging".center(73) + "#") + "\n" + ("#" * 75))
print("Please use these commands \\ Add (a), Show (s) or Exit (e)")
# process
while True :
    # input
    _cmd = input("PAYMENT_TABLE> ").split(" ")
    # file
    _flw = open(_pth, "a")
    _flr = open(_pth, "r")
    # command
    ## add
    if _cmd[0].lower() in ["add", "a"] :
        # date
        _dat = datetime.datetime.now().strftime(r"%Y/%m/%d - %H:%M:%S")
        ## nothing salary
        if _cmd[1][0] == "s" and int(_cmd[1][1:]) == 0 :
            _flw.write(f"\n[NOT] ===> {_dat} ===> {str(int(_cmd[1][1:])).ljust(10)} ===> ")
        ## salary
        elif _cmd[1][0] == "s" :
            _flw.write(f"\n[SAL] ===> {_dat} ===> {str(int(_cmd[1][1:])).ljust(10)} ===> ")
        ## nothing payment
        elif int(_cmd[1]) == 0 :
            _flw.write(f"\n[NOT] ===> {_dat} ===> {str(int(_cmd[1])).ljust(10)} ===> ")
        ## payment
        else :
            _flw.write(f"\n[REM] ===> {_dat} ===> {str(int(_cmd[1].ljust(10))).ljust(10)} ===> ")
        ## discription
        try :
            _flw.write(_cmd[2])
            _flw.close()
        except IndexError :
            _flw.write("-")
            _flw.close()
    ## show
    elif _cmd[0].lower() in ["show", "s"] :
        print("-" * 75)
        print("|" + "DATA".center(73) + "|")
        print("-" * 75)
        print("".join(_flr.readlines()[1:]))
        print("\b" + "-" * 73)
        _flw.close()
        _flr.close()
    ## exit
    elif _cmd[0].lower() in ["exit", "e"] :
        print("Goodbye :)")
        break
    ## another charecter
    else :
        print("Please use these commands \\ Add (a), Show (s) or Exit (e)")