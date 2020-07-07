# {{ downloadUrl }}

{% import './snippet/direct_rules.tpl' as direct_rules %}
{% import './snippet/apple_rules.tpl' as apple_rules %}
{% import './snippet/youtube_rules.tpl' as youtube_rules %}
{% import './snippet/us_rules.tpl' as us_rules %}
{% import './snippet/blocked_rules.tpl' as blocked_rules %}

external-controller: 127.0.0.1:9090
port: 7890
socks-port: 7891
redir-port: 7892

{% if customParams.dns %}
dns:
  enable: true
  nameserver:
    - https://223.5.5.5/dns-query
  fallback:  # IP addresses who is outside CN in GEOIP will fallback here
    - https://223.6.6.6/dns-query
    - https://rubyfish.cn/dns-query
  fallback-filter:
    geoip: true  # Enable GEOIP-based fallback
    ipcidr:
      - 240.0.0.0/4
{% endif %}

Proxy: {{ getClashNodes(nodeList) | json }}

Proxy Group:
- type: select
  name: 🚀 Proxy
  proxies: {{ getClashNodeNames(nodeList) | json }}
- type: select
  name: 🎬 Netflix
  proxies: {{ getClashNodeNames(nodeList, netflixFilter) | json }}
- type: url-test
  name: US
  proxies: {{ getClashNodeNames(nodeList, usFilter) | json }}
  url: {{ proxyTestUrl }}
  interval: 1200
- type: url-test
  name: HK
  proxies: {{ getClashNodeNames(nodeList, hkFilter) | json }}
  url: {{ proxyTestUrl }}
  interval: 1200
- type: select
  name: 🍎 Apple
  proxies:
    - DIRECT
    - 🚀 Proxy
    - US
    - HK
- type: select
  name: 🍎 Apple CDN
  proxies:
    - DIRECT
    - 🍎 Apple

Rule:
{{ apple_rules.main('🚀 Proxy', '🍎 Apple', '🍎 Apple CDN', 'DIRECT', 'US') | clash }}
{{ remoteSnippets.netflix.main('🎬 Netflix') | clash }}
{{ remoteSnippets.hbo.main('🚀 Proxy') | clash }}
{{ remoteSnippets.hulu.main('🚀 Proxy') | clash }}
{{ youtube_rules.main('🚀 Proxy') | clash }}
{{ us_rules.main('US') | clash }}
{{ remoteSnippets.telegram.main('🚀 Proxy') | clash }}
{{ blocked_rules.main('🚀 Proxy') | clash }}
{{ direct_rules.main('DIRECT') | clash }}

# LAN
- DOMAIN-SUFFIX,local,DIRECT
- IP-CIDR,127.0.0.0/8,DIRECT
- IP-CIDR,172.16.0.0/12,DIRECT
- IP-CIDR,192.168.0.0/16,DIRECT
- IP-CIDR,10.0.0.0/8,DIRECT
- IP-CIDR,100.64.0.0/10,DIRECT

# Final
- GEOIP,CN,DIRECT
- MATCH,🚀 Proxy
