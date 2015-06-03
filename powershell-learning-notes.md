<!-- TOC depth:6 withLinks:1 updateOnSave:1 -->
- [PowerShell介绍](#powershell)
- [第三方组件](#)
- [好的脚本语言应该具备的特性](#)
- [相关资源](#)
	- [网站](#)
	- [视频：](#)
	- [图书](#)
<!-- /TOC -->

# PowerShell介绍

[PowerShell-Wikipedia](https://en.wiki2.org/wiki/Windows_PowerShell)，主要内容如下：

# 第三方组件

- [PSReadLine](https://github.com/lzybkr/PSReadLine) - A bash inspired readline implementation for PowerShell
    - [Towards a better console - PSReadLine for PowerShell command line editing](http://www.hanselman.com/blog/TowardsABetterConsolePSReadLineForPowerShellCommandLineEditing.aspx) By Scott Hanselman
- [PsGet](http://psget.net/) - Search and install PowerShell modules easy.
    - 注意：PowerShell 5中已经自带了PowerShellGet Module的，这个module和PsGet的功能重复。如果系统的PowerShell版本是5.0，不要安装PsGet
- [Psake](https://github.com/psake/psake) - a build automation tool… now with less XML…
- [PowerShell Tools for Visual Studio 2013](https://visualstudiogallery.msdn.microsoft.com/c9eb3ba8-0c59-4944-9a62-6eee37294597)

# 好的脚本语言应该具备的特性

- 脚本语言本身：
    - 丰富的命令（或者功能），以及扩展性
    - 管道机制，功能倍增器
    - 语法是否简单，完备：比如是否支持变量、函数、分支、循环、异常处理、闭包等等
    - 方便易用的帮助，比如man，get-help
- 其它方面：
    - 和Shell集成：反面的例子比如cscript.exe上执行的VBScript和Jscript
    - 包管理机制（类似Chocolatey，OneGet，APT-GET，homebrew）
    - 互操作性（interoperable）：比如.NET程序中执行PowerShell脚本
    - 广泛的支持（SQL Server，Exchange Server等）

# 相关资源

## 网站

- [PowerShell Gallery](https://www.powershellgallery.com/)
- [Microsoft Script Center - Technet](https://technet.microsoft.com/en-us/scriptcenter/bb410849.aspx)
- [Windows PowerShell Team Blog](http://blogs.msdn.com/b/powershell/)
- [Windows PowerShell Tutorial By Guy Thomas](http://www.computerperformance.co.uk/powershell/index.htm)

## 视频：

- [Advanced Tools & Scripting with PowerShell 3.0 Jump Start](http://www.microsoftvirtualacademy.com/training-courses/advanced-tools-scripting-with-powershell-3-0-jump-start)，侧重讲PowerShell语法
- [PowerShell 3.0快速入门](http://www.youku.com/playlist_show/id_20773431.html?sf=10201)，侧重讲应用

## 图书

- "Learn PowerShell 3 in a month of Lunches (2nd)" by Don Jones
- "PowerShell in Depth (2nd)" by Don Jonnes
- "Windows PowerShell in Action (2nd)" by Bruce Payette
- "Windows PowerShell Cookbook (3nd)" by Lee Holmes
- "Learn PowerShell ToolMaking in a Month of Lunches" by Don Jones
