#!MANAGED-CONFIG {{ downloadUrl }} interval=43200 strict=false
[General]
# 日志等级 warning, notify, info, verbose (默认: notify)
loglevel = warning
# 网络诊断
# > Internet 测试 URL
internet-test-url = http://www.aliyun.com
# > 代理测速 URL
proxy-test-url = http://cp.cloudflare.com/generate_204
# > 测速超时 (s)
test-timeout = 3
# IPv6 支持
ipv6 = false
# Wi-Fi 访问
# > 允许 Wi-Fi 网络下其它设备访问
allow-wifi-access = true
# > HTTP 代理服务端口（默认 "6152"）
# wifi-access-http-port = 6152
# > SOCKS5 代理服务端口（默认 "6153"）
# wifi-access-socks5-port = 6153
# 外部控制器
external-controller-access = admin@127.0.0.1:6170
# 兼容性
# > 兼容模式（默认 "禁用"）
# compatibility-mode = 0
# > 跳过某个域名或者IP段
skip-proxy = 127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,100.64.0.0/10,localhost,*.local,e.crashlytics.com,captive.apple.com,::ffff:0:0:0:0/1,::ffff:128:0:0:0/1
bypass-system = true
# 实验性支持
# > TLS Provider: default, secure-transport, network-framework, openssl (默认: default)
tls-provider = default
# > 启动 Network.framework（默认不启用）
network-framework = false
# 其他（请先阅读手册，除非你明确知道其含义，否则不要修改任何设置）
# > Show Reject Error Page
show-error-page-for-reject = true
# > Hijack DNS
# hijack-dns =
# > TCP Force HTTP Hosts
# force-http-engine-hosts = example.com:80
# > VIF Excluded Routes
-excluded-routes = 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12
# > VIF Included Routes
tun-included-routes = 192.168.1.12/32
# DNS 服务器
dns-server = 119.29.29.29,223.5.5.5,system
http-listen = 0.0.0.0
socks5-listen = 0.0.0.0

[Replica]
# [抓取流量] => 过滤器
# > 隐藏 Apple 请求
hide-apple-request = true
# > 隐藏 Crashlytics 请求
hide-crashlytics-request = true
# > 隐藏 UDP 会话
hide-udp = false
# > 关键词过滤器
keyword-filter-type = (null)
keyword-filter = icloud,ocsp,logs,analytic,ads,imap,adthor,applovin,appnext,talk,dropbox,spys

[Proxy]
{{ getSurgeNodes(nodeList) }}

[Proxy Group]
🚀 Proxy = select, ♻️ Auto, United States, Hong Kong, Taiwan, Singapore, Japan, Manual, DIRECT
♻️ Auto = url-test, {{ getNodeNames(nodeList) }}, url = {{ proxyTestUrl }}, interval = 300
Manual = select, {{ getNodeNames(nodeList) }}

YouTube = select, 🚀 Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, Manual, DIRECT
Telegram = select, 🚀 Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, 🚀 Proxy, Manual, DIRECT
GMedia = select, 🚀 Proxy, Netflix_Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, Manual, 
Netflix = select, Netflix_Proxy, United States, Hong Kong, Taiwan, Singapore, Manual, DIRECT
HBO Max = select, {{ getNodeNames(nodeList, customFilters.HBOFilter) }}
# Apple CDN = select, DIRECT, Apple
PayPal = select, DIRECT, 🚀 Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, Manual
Apple = select, DIRECT, 🚀 Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, Manual
# Apple News = select, Apple, DIRECT
Microsoft = select, DIRECT, 🚀 Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, Manual
# OneDrive = select, DIRECT, 🚀 Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, Manual
Game = select, DIRECT, 🚀 Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, Manual
# GDirect = select, DIRECT, 🚀 Proxy
# CMedia = select, DIRECT, United States, Hong Kong, Taiwan, Singapore, Japan, Manual
# AdBlock = select, REJECT, DIRECT
Final = select, 🚀 Proxy, United States, Hong Kong, Taiwan, Singapore, Japan, Manual, DIRECT


Netflix_Proxy = select, {{ getNodeNames(nodeList, netflixFilter) }}
United States = url-test, {{ getNodeNames(nodeList, usFilter) }}, url = {{ proxyTestUrl }}, interval = 1200
Hong Kong = url-test, {{ getNodeNames(nodeList, hkFilter) }}, url = {{ proxyTestUrl }}, interval = 1200
Taiwan = url-test, {{ getNodeNames(nodeList, taiwanFilter) }}, url = {{ proxyTestUrl }}, interval = 1200
Singapore = url-test, {{ getNodeNames(nodeList, singaporeFilter) }}, url = {{ proxyTestUrl }}, interval = 1200
Japan = url-test, {{ getNodeNames(nodeList, japanFilter) }}, url = {{ proxyTestUrl }}, interval = 1200


[Rule]
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Reject.list, REJECT

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Special.list, DIRECT

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Netflix.list,Netflix

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Bilibili.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/iQiyi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Letv.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/MOO.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Tencent%20Video.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Youku.list, DIRECT

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/ABC.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Abema%20TV.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Amazon.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Apple%20News.list, Apple
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Apple%20TV.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Bahamut.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/BBC%20iPlayer.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/DAZN.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Disney%20Plus.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/encoreTVB.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Fox%20Now.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Fox%2B.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/HBO.list, HBO Max
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Hulu%20Japan.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Hulu.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Japonx.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/JOOX.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/KKBOX.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/KKTV.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Line%20TV.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/myTV%20SUPER.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Pandora.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/PBS.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Pornhub.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Soundcloud.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/ViuTV.list,GMedia
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/YouTube%20Music.list,YouTube
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/YouTube.list,YouTube

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Telegram.list,Telegram
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Steam.list,Game
# RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Speedtest.list,Speedtest
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/PayPal.list,PayPal
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Microsoft.list,Microsoft
# RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Netease%20Music.list,Netease Music

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Proxy.list,🚀 Proxy
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Domestic.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Apple.list,Apple


# Rulesets
RULE-SET,SYSTEM,DIRECT

# LAN
RULE-SET,LAN,DIRECT

# GeoIP CN
GEOIP,CN,DIRECT

# Final
FINAL, Final, dns-failed


[Host]
iosapps.itunes.apple.com = script:dnspod
*.126.com = server:119.29.29.29
*.126.net = server:119.29.29.29
*.127.net = server:119.29.29.29
*.163.com = server:119.29.29.29
*.alicdn.com = server:223.5.5.5
*.aliyun.com = server:223.5.5.5
*.baidu.com = server:syslib
*.bdstatic.com = server:syslib
*.bilibili.com = server:119.29.29.29
*.jd.com = server:119.28.28.28
*.mi.com = server:119.29.29.29
*.netease.com = server:119.29.29.29
*.pcbeta.com = 120.52.19.113
*.qpic.cn = server:119.28.28.28
*.qq.com = server:119.28.28.28
*.taobao.com = server:223.6.6.6
*.tencent.com = server:119.28.28.28
*.tmall.com = server:223.6.6.6
*.weixin.com = server:119.28.28.28
*.xiaomi.com = server:119.29.29.29
cdn.pcbeta.attachment.inimc.com = 120.52.19.113
cdn.pcbeta.css.inimc.com = 120.52.19.113
cdn.pcbeta.static.inimc.com = 120.52.19.113
hdslb.com = server:119.29.29.29
# CUSTOM DNS

[URL Rewrite]
# CUSTOM URL
# > Redirect Google Service
^https?:\/\/(www.)?(g|google)\.cn https://www.google.com 302

# > TikTok Unlock & remove logo (By Choler)
(?<=_region=)CN(?=&) JP 307
(?<=&app_version=)16..(?=.?.?&) 1 307
(?<=\?version_code=)16..(?=.?.?&) 1 307

# Redirect HTTP to HTTPS
^https?:\/\/(www.)?taobao\.com\/ https://taobao.com/ 302
^https?:\/\/(www.)?jd\.com\/ https://www.jd.com/ 302
^https?:\/\/(www.)?mi\.com\/ https://www.mi.com/ 302
^https?:\/\/you\.163\.com\/ https://you.163.com/ 302
^https?:\/\/(www.)?suning\.com/ https://suning.com/ 302
^https?:\/\/(www.)?yhd\.com https://yhd.com/ 302

[Header Rewrite]
^https?://zhidao\.baidu\.com header-replace User-Agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.2 Safari/605.1.15"

[MITM]
skip-server-cert-verify = true
tcp-connection = false

enable = true
hostname = %APPEND% *.snssdk.com, *.amemv.com, *.akamaized.net, *.appsflyer.com, *.tiktokv.com, *.muscdn.com, *.byteoversea.com, *.musical.ly, *.ibyteimg.com, *.app-measurement.com, mapi.weibo.com, *.uve.weibo.com, mp.weixin.qq.com, api.bilibili.com, app.bilibili.com, *.zhihu.com, aweme*.snssdk.com, *.kuwo.cn, *.xiaoxiao*.com, api*.tiktokv.com, *.musical.ly, *.amemv.com, p.du.163.com, getuserinfo.321mh.com, getuserinfo-globalapi.zymk.cn, ios.fuliapps.com, vsco.co, api.vnision.com, *.my10api.com, sp.kaola.com, r.inews.qq.com, apple.fuliapps.com, newdrugs.dxy.cn, app101.avictown.cc, api.hlo.xyz, api.ijo.xyz, www.luqijianggushi.com, account.wps.cn, u.kanghuayun.com, api.gyrosco.pe, api1.dobenge.cn, api.mvmtv.com, mitaoapp.yeduapp.com, origin-prod-phoenix.jibjab.com, www.3ivf.com, pay.guoing.com, api.termius.com, api.bjxkhc.com, viva.v21xy.com, biz.caiyunapp.com, api.gotokeep.com, ap*.intsig.net, mp.bybutter.com, api.vuevideo.net, api.picsart.c*, api.meiease.c*, splice.oracle.*.com, ios.xiangjiaoapps.com, apple.xiangjiaoapps.com, *.xiangxiangapps.com, api.1sapp.com, wapside.189.cn:9001, %APPEND% *.tiktokv.com, *.byteoversea.com
ca-passphrase = C8F6087B
ca-p12 = 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

[script]
Zhihu-ad-feed.js = requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Zhihu-ad-feed.js,type=http-response,pattern=^https://api.zhihu.com/moments\?(action|feed_type)
Zhihu-ad-recommend.js = requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Zhihu-ad-recommend.js,type=http-response,pattern=^https://api.zhihu.com/topstory/recommend
Zhihu-ad-answer.js = requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Zhihu-ad-answer.js,type=http-response,pattern=^https://api.zhihu.com/.*/questions
Zhihu-ad-market.js = requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Zhihu-ad-market.js,type=http-response,pattern=^https://api.zhihu.com/market/header