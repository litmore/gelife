@echo off
color 2e
net start iphlpsvc
echo ---------------------------------------------------------------------
echo 1).如出现请求服务已启动，说明您的Windows系统已成功开启IPv6网络协议
echo 2).设置连接支持IPv6的Teredo服务器：
echo =====如下命令执行不显示命令,各命令行正在执行中，请稍候...
netsh interface isatap set state default

netsh interface teredo set state default

netsh interface teredo set state server=teredo.remlab.net

netsh interface ipv6 set teredo enterpriseclient

echo =====
echo 3).如上出现的四个“确定”，说明设定Teredo服务器完毕。
echo 4).★★ 可在关闭此对话框后,打开此【 http://test-ipv6.com 】网站，
echo 测试看下是否有支持IPv6选项了。
echo 5).☆☆如摘要有提示：【你的 IPv6 服务是: Teredo 】,及最后一项提示：
echo 你的 DNS 服务器（可能由运营商提供）已经接入 IPv6 互联网了。
echo 说明IPv6已成功开启，可透过叉叉net进一步部署访问外网了。请关闭此窗口
echo ---------------------------------------------------------------------
pause
cmd
