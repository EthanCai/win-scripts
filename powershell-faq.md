# Windows PowerShell Profiles文件保存在什么位置？

- [Windows PowerShell Profiles - Technet](https://technet.microsoft.com/en-us/library/bb613488(v=vs.85).aspx)
- [Understanding and Using PowerShell Profiles - PowerShell Team Blog](http://blogs.technet.com/b/heyscriptingguy/archive/2013/01/04/understanding-and-using-powershell-profiles.aspx)


# PowerShell Remote Trouble Shooting

下面的文章中包含了很多关于PowerShell远程连接的一些问题和解决办法
- [about_Remote_Troubleshooting - TechNet](https://technet.microsoft.com/en-us/library/dd347642.aspx)

# PowerShell展示本地及远程电脑的driver

GET-WMIOBJECT –query "SELECT * from win32_logicaldisk where DriveType='3'"

检查远程电脑的drivers，需要加上-ComputerName参数

GET-WMIOBJECT –query "SELECT * from win32_logicaldisk where DriveType = '3'" –computername "ContosoWS1"

# Windows 10的Microsoft Edge浏览器默认不能访问localhost website，如果解决？

参考[Can't open localhost in Project Spartan in Windows 10 preview](http://stackoverflow.com/questions/30334289/cant-open-localhost-in-project-spartan-in-windows-10-preview)

原因是：So the issue is Edge doesn't have access to the loopback addresses, which is something that most Windows Store are blocked from accessing.
