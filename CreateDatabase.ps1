<#

- 用途：快速创建和初始化SQL Server数据库
- 作者：Ethan Cai， 蔡城杨
- Github：https://github.com/EthanCai
- 微信：caichengyang450798
- QQ：42452545

# 运行机制

1. 运行时需要指定
    - 数据库实例：允许指定非本地数据库实例
    - 数据库名：自动根据名称创建数据库，数据库的COLLATE Chinese_PRC_CS_AI_WS
    - 数据库管理员用户名：
    - 数据库管理员密码：
2. 在脚本所在文件夹创建如下目录
    - DB_Schema_Script：DB Schema初始化SQL脚本所在目录
    - Init_Data_Script：数据库数据初始化SQL脚本所在目录，比如超级管理员账户、权限定义数据，注意不要把Demo数据初始化脚本放在此文件夹下
    - Demo_Data_Script：Demo数据初始化SQL脚本所在目录
3. 执行步骤：
    - 指定数据库实例、数据库名、管理员用户名和密码
    - 创建（新）数据库
    - 按照文件名字母顺序（从小到大）执行DB_Schema_Script文件夹下的SQL脚本
    - 按照文件名字母顺序（从小到大）执行Init_Data_Script文件夹下的SQL脚本
    - 询问是否初始化Demo数据
        - 如果选择执行，按照文件名字母顺序（从小到大）执行Demo_Data_Script文件夹下的SQL脚本

# 需要注意的问题：

If throw exception says "the term invoke-sqlcmd is not recognized", please refer to
http://jasonq.com/2012/03/3-things-to-do-if-invoke-sqlcmd-is-not-recognized-in-windows-powershell/

#>

$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath
Write-host "Set location to directory $scriptDir"

# temporarily change to the correct folder
Push-Location $scriptDir

$initSchemaScriptFolder = Join-Path $scriptDir "DB_Schema_Script"
$initDataScriptFolder = Join-Path $scriptDir "Init_Data_Script"
$demoDataScriptFolder = Join-Path $scriptDir "Demo_Data_Script"

Write-Host "DB Schema Script Folder is $initSchemaScriptFolder"
Write-Host "DB Init Data Script Folder is $initDataScriptFolder"
Write-Host "Demo Data Folder is $demoDataScriptFolder"

Write-Host ""

$dbServerInstance = Read-Host "Please input the sql server instance name "
$dbName = read-host "Please enter the database name "
$username = read-host "Please enter the username "
$password = read-host "Please enter the password "

#Create database
$createDBScript = "CREATE DATABASE $dbName
 COLLATE Chinese_PRC_CS_AI_WS
GO"

write-host "Begin to create database $dbName" -ForegroundColor Yellow
invoke-sqlcmd -Query $createDBScript -serverinstance $dbServerInstance -Username $username -Password $password
write-host "Finish creating database $dbNam\n" -ForegroundColor Green

#Execute schema init scripts
$initDBSchemaScriptTable = Get-ChildItem $initSchemaScriptFolder -Filter *.sql | Sort-Object Name

Write-Host "Begin to execute init schema script..." -ForegroundColor Yellow
foreach($row in $initDBSchemaScriptTable)
{
    $initDBSchemaScript = Join-Path $initSchemaScriptFolder $row.Name
    invoke-sqlcmd -InputFile $initDBSchemaScript -Database $dbName -serverinstance $dbServerInstance -Username $username -Password $password
    Write-Host "Finish executing $initDBSchemaScript"
}
Write-Host "Finish executing all init schema scripts" -ForegroundColor Green

#Execute init data scripts
$initDataScriptTable = Get-ChildItem $initDataScriptFolder -Filter *.sql | Sort-Object Name

Write-Host "Begin to execute init data script..." -ForegroundColor Yellow
foreach($row in $initDataScriptTable)
{
    $initDataScript = Join-Path $initDataScriptFolder $row.Name
    invoke-sqlcmd -InputFile $initDataScript -Database $dbName -serverinstance $dbServerInstance -Username $username -Password $password
    Write-Host "Finish executing $initDataScript"
}
Write-Host "Finish executing all init data scripts" -ForegroundColor Green

#Choose whether to init demo data
$isInitDemoData = Read-Host "Enter yes if you want to init demo data"

if ($isInitDemoData -and $isInitDemoData.ToLower() -eq "yes")
{
    $initDemoDataScriptTable = Get-ChildItem $demoDataScriptFolder -Filter *.sql | Sort-Object Name

    foreach($row in $initDemoDataScriptTable)
    {
        $initDemoDataScript = Join-Path $demoDataScriptFolder $row.Name
        invoke-sqlcmd -InputFile $initDemoDataScript -Database $dbName -serverinstance $dbServerInstance -Username $username -Password $password
        Write-Host "Finish executing $initDemoDataScript"
    }

    Write-Host "Finish initiating demo data" -ForegroundColor Green
}

# now back to previous directory
Pop-Location
