

# PowerShell介绍

[PowerShell-Wikipedia](https://en.wiki2.org/wiki/Windows_PowerShell)，主要内容如下：

1. 背景知识
1. 设计：cmdlet，pipeline，scripting，hosting
1. 各版本变化：1.0，2.0，3.0，4.0，5.0
1. Comparison of cmdlet with similar commands
1. File extensions
1. Application Support
1. Alternative implementation

# 特点

- 脚本语言本身：
    - 丰富的命令（或者功能），以及扩展性
    - 管道机制，功能倍增器
    - 语法是否简单，完备：比如是否支持变量、函数、分支、循环、异常处理、闭包等等
    - 方便易用的帮助，比如man，get-help
- 其它方面：
    - 和Shell集成：反面的例子比如cscript.exe上执行的VBScript和Jscript
    - 包管理机制（类似Chocolatey，OneGet，APT-GET，homebrew），这方面期待powershell 5.0推出的OneGet
    - 互操作性（interoperable）：比如.NET程序中执行PowerShell脚本
    - 广泛的支持（SQL Server，Exchange Server等）

# 学习视频：

- [Getting Started with PowerShell 3.0 Jump Start](https://www.microsoftvirtualacademy.com/en-US/training-courses/getting-started-with-powershell-3-0-jump-start-8276)，侧重讲语法，如果访问MVA比较慢可以看[youku上的视频](http://www.youku.com/playlist_show/id_20773431.html?sf=10201)
- [Advanced Tools & Scripting with PowerShell 3.0 Jump Start](http://www.microsoftvirtualacademy.com/training-courses/advanced-tools-scripting-with-powershell-3-0-jump-start)，侧重讲应用
- [Getting Started with PowerShell Desired State Configuration (DSC)](http://www.microsoftvirtualacademy.com/training-courses/getting-started-with-powershell-desired-state-configuration-dsc-)
- [Advanced PowerShell Desired State Configuration (DSC) and Custom Resources](http://www.microsoftvirtualacademy.com/training-courses/advanced-powershell-desired-state-configuration-dsc-and-custom-resources)
- [Windows Server 2012 R2 : 服务器管理和自动化](http://www.microsoftvirtualacademy.com/training-courses/803)

# 博客文章

- 2008-08-29: [How to run PowerShell scripts from C#](http://www.codeproject.com/Articles/18229/How-to-run-PowerShell-scripts-from-C)
- 2008-08-29: [Asynchronously Execute PowerShell Scripts from C#](http://www.codeproject.com/Articles/18409/Asynchronously-Execute-PowerShell-Scripts-from-C)
- 2010-02-22: [不一样的命令行 – Windows PowerShell简介](http://www.cnblogs.com/grapeot/archive/2010/02/22/1670822.html)
- 2010-02-25: [用PowerShell打造时间管理小秘书](http://www.cnblogs.com/grapeot/archive/2010/02/25/1673473.html)
- 2010-02-26: [一个相对实用的PowerShell时间记录脚本](http://www.cnblogs.com/grapeot/archive/2010/02/26/1674246.html)
- 2010-03-08: [How to Create a Powershell 2.0 Module and Cmdlet with Visual Studio 2010 (Screencast included)](http://blogs.msdn.com/b/saveenr/archive/2010/03/08/how-to-create-a-powershell-2-0-module-and-cmdlet-with-visual-studio-2010-screencast-included.aspx)
- 2012-12-26: [PowerShell Workflows: The Basics](http://blogs.technet.com/b/heyscriptingguy/archive/2012/12/26/powershell-workflows-the-basics.aspx)
- 2013-03-28: [Run your PowerShell Scripts as Windows Services!](http://the.powershell.zone/run-your-powershell-scripts-as-windows-services/)
- 2013-06-09: [An Introduction to Error Handling in PowerShell](http://blogs.msdn.com/b/kebab/archive/2013/06/09/an-introduction-to-error-handling-in-powershell.aspx)
- 2013-06-11: [Understanding PowerShell's Type Conversion Magic](http://blogs.msdn.com/b/powershell/archive/2013/06/11/understanding-powershell-s-type-conversion-magic.aspx)
- 2013-06-24: [Getting Started with Windows PowerShell Workflow](https://technet.microsoft.com/en-us/library/jj134242.aspx)
- 2013-08-14: [Automation–Service Management Automation–Getting Started with SMA Runbooks](http://blogs.technet.com/b/privatecloud/archive/2013/08/14/automation-service-management-automation-getting-started-with-sma-runbooks.aspx)
- 2013-08-30: [Introducing PowerShell Desired State Configuration (DSC)](http://blogs.technet.com/b/privatecloud/archive/2013/08/30/introducing-powershell-desired-state-configuration-dsc.aspx)
- 2013-12-16: [PowerShell Security Best Practices](http://blogs.msdn.com/b/powershell/archive/2013/12/16/powershell-security-best-practices.aspx)
- 2014-03-18: [Writing a PowerShell module in C#, Part 1: The basics](http://www.powershellmagazine.com/2014/03/18/writing-a-powershell-module-in-c-part-1-the-basics/)
- 2014-04-01: [PowerShell Desired State Configuration (DSC) Survival Guide](http://social.technet.microsoft.com/wiki/contents/articles/23222.powershell-desired-state-configuration-dsc-survival-guide.aspx)
- 2014-04-08: [Basics of Writing a PowerShell Module with C#, Part 2: Debugging](http://www.powershellmagazine.com/2014/04/08/basics-of-writing-a-powershell-module-with-c-part-2-debugging/)
- 2014-06-06: [PowerShell DSC Blog Series, Part 5- Point in Time List of DSC Resources](http://blogs.technet.com/b/privatecloud/archive/2014/06/06/powershell-dsc-blog-series-part-5-point-in-time-list-of-dsc-resources.aspx)
- 2014-07-03: [Posh-SSH: Open Source SSH PowerShell Module](http://www.powershellmagazine.com/2014/07/03/posh-ssh-open-source-ssh-powershell-module/)
- 2014-07-29: [Chef with PowerShell DSC Now Public!](http://blogs.msdn.com/b/powershell/archive/2014/07/29/chef-with-powershell-dsc-now-public.aspx)
- 2014-08-08: [Executing PowerShell scripts from C#](http://blogs.msdn.com/b/kebab/archive/2014/04/28/executing-powershell-scripts-from-c.aspx)
- 2015-04-29: [ScriptAnalyzer in GitHub and availability on PowerShell Gallery](http://blogs.msdn.com/b/powershell/archive/2015/04/29/scriptanalyzer-in-github-and-availability-on-powershell-gallery.aspx)
- 2015-05-05: [Desired State Configuration Resources for PackageManagement Providers](http://blogs.msdn.com/b/powershell/archive/2015/05/05/desired-state-configuration-resources-for-packagemanagement-providers.aspx)
- 2015-05-29: [How to register a node with a DSC pull server](http://blogs.msdn.com/b/powershell/archive/2015/05/29/how-to-register-a-node-with-a-dsc-pull-server.aspx)
- 2015-06-03: [Looking Forward: Microsoft Support for Secure Shell (SSH)](http://blogs.msdn.com/b/powershell/archive/2015/06/03/looking-forward-microsoft-support-for-secure-shell-ssh.aspx)
- 2015-06-09: [PowerShell ♥ the Blue Team](http://blogs.msdn.com/b/powershell/archive/2015/06/09/powershell-the-blue-team.aspx)
- 2015-06-17: [Azure DSC Extension v2.0 released](http://blogs.msdn.com/b/powershell/archive/2015/06/17/azure-dsc-extension-v2-0-released.aspx)


# 第三方组件

- [PSReadLine](https://github.com/lzybkr/PSReadLine) - A bash inspired readline implementation for PowerShell
    - [Towards a better console - PSReadLine for PowerShell command line editing](http://www.hanselman.com/blog/TowardsABetterConsolePSReadLineForPowerShellCommandLineEditing.aspx) By Scott Hanselman
- [PsGet](http://psget.net/) - Search and install PowerShell modules easy.
    - 注意：PowerShell 5中已经自带了PowerShellGet Module的，这个module和PsGet的功能重复。如果系统的PowerShell版本是5.0，不要安装PsGet
- [Psake](https://github.com/psake/psake) - a build automation tool… now with less XML…
- [PowerShell Tools for Visual Studio 2013](https://visualstudiogallery.msdn.microsoft.com/c9eb3ba8-0c59-4944-9a62-6eee37294597)
- [DSC Resource Kit (All Modules)](https://gallery.technet.microsoft.com/scriptcenter/DSC-Resource-Kit-All-c449312d)

# 相关网站

- [PowerShell Gallery](https://www.powershellgallery.com/)
- [Microsoft Script Center - Technet](https://technet.microsoft.com/en-us/scriptcenter/bb410849.aspx)
- [Windows PowerShell Team Blog](http://blogs.msdn.com/b/powershell/)
- [Windows PowerShell Tutorial By Guy Thomas](http://www.computerperformance.co.uk/powershell/index.htm)
- [PowerShell Magazine](http://www.powershellmagazine.com/)
- [powershell.org](http://powershell.org/wp/)

# 图书

- "Learn PowerShell 3 in a month of Lunches (2nd)" by Don Jones
- "PowerShell in Depth (2nd)" by Don Jonnes
- "Windows PowerShell in Action (2nd)" by Bruce Payette
- "Windows PowerShell Cookbook (3nd)" by Lee Holmes
- "Learn PowerShell ToolMaking in a Month of Lunches" by Don Jones
- [powershell.org free ebooks](http://powershell.org/wp/ebooks/)
