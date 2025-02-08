# Themes

## WT 美化

- 下载 powershell7，wt setting.json 中配置 pwsh.exe 路径
- 下载 oh-my-posh, microsoft store 可下载
- 下载 material.omp.json，保存到某个路径 `<path>`
- wt powershell 中输入 `$PROFILE` 查看配置文件保存的位置，然后进入该位置，如果没有就创建目录
- wt powershell 中 输入 `notepad $PROFILE`，输入 `oh-my-posh init pwsh --config "<path>" | Invoke-Expression` 然后把文件保存到 `$PROFILE\Microsoft.PowerShell_profile.ps1`
- 顺便配置下 pwsh 自动启动 conda
- 
