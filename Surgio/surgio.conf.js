'use strict';

const { utils } = require('surgio');

/**
 * 使用文档：https://surgio.royli.dev/
 */
module.exports = {
  /**
   * 远程片段
   * 文档：https://surgio.royli.dev/guide/custom-config.html#remotesnippets
   */
  remoteSnippets: [
    // {
    //   name: 'YouTube',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/YouTube.list'
    // },
    
    // {
    //   name: 'LocalArea',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list',
    // },
    // {
    //   name: 'UnBan',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/UnBan.list'
    // },
    // {
    //   name: 'GoogleCN',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/GoogleCN.list'
    // },
    // {
    //   name: 'ChinaDomain',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list'
    // },
    // {
    //   name: 'ChinaCompanyIP',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list'
    // },
    // {
    //   name: 'Download',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Download.list'
    // },
    // {
    //   name: 'GMedia',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyMedia.list'
    // },

    // {
    //   name: 'telegram', // 模板中对应 remoteSnippets.telegram
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Telegram.list'
    // },
    // {
    //   name: 'netflix', // 模板中对应 remoteSnippets.netflix
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Netflix.list'
    // },
    // {
    //   name: 'GoogleFCM', 
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/GoogleFCM.list'
    // },
    // {
    //   name: 'OneDrive',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/OneDrive.list'
    // },
    // {
    //   name:  'Epic',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Epic.list'
    // },
    // {
    //   name:  'Sony',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Sony.list'
    // },
    // {
    //   name:  'Steam',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Steam.list'
    // },

    // {
    //   name: 'ChinaMedia',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaMedia.list'
    // },
    // {
    //   name: 'ProxyGFW',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyGFWlist.list'
    // },
    // {
    //   name: 'BanAD',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list'
    // },
    // {
    //   name: 'BanProgram',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list'
    // },
    // {
    //   name: 'BanEasyList',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyList.list'
    // },
    // {
    //   name: 'BanEasyChina',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyListChina.list'
    // },
    // {
    //   name: 'BanEasyPrivacy',
    //   url: 'https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyPrivacy.list'
    // },
    // {
    //   name: 'Microsoft',
    //   url: 'https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Microsoft.list'
    // },
    // {
    //   name: 'Apple_News',
    //   url: 'https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Apple%20News.list'
    // },

    // {
    //   name: 'Apple_API',
    //   url: 'https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Apple_API.list'
    // },

    // {
    //   name: 'Apple_CDN',
    //   url: 'https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Apple_CDN.list'
    // },

    // {
    //   name: 'hbo', // 模板中对应 remoteSnippets.hbo
    //   url: 'https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/Media/HBO.list'
    // },
    // {
    //   name: 'hulu', // 模板中对应 remoteSnippets.hulu
    //   url: 'https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/Media/Hulu.list'
    // },
    // {
    //   name: 'paypal', // 模板中对应 remoteSnippets.paypal
    //   url: 'https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/PayPal.list',
    // },

  ],
  customFilters: {
    hktFilter: utils.useKeywords(['hkt', 'HKT']),
  },
  artifacts: [
    /**
     * Surge
     */
    {
      name: 'SSR Final.conf', // 新版 Surge
      template: 'surge_v3',
      provider: 'ssr_cloud',
    },
    // {
    //   name: 'Surge_simple.conf', // 旧版 Surge
    //   template: 'surge_simple',
    //   provider: 'subscribe_demo',
    // },
    // // 合并 Provider
    // {
    //   name: 'SurgeV3_combine.conf',
    //   template: 'surge_v3',
    //   provider: 'demo',
    //   combineProviders: ['subscribe_demo'],
    // },
    // // Surge + SSR
    // {
    //   name: 'SurgeV3_ssr.conf',
    //   template: 'surge_v3',
    //   provider: 'ssr_cloud',
    // },

    // /**
    //  * Clash
    //  */
    // {
    //   name: 'Clash.yaml',
    //   template: 'clash',
    //   provider: 'subscribe_demo',
    // },
    // {
    //   name: 'Clash_custom_dns.yaml',
    //   template: 'clash',
    //   provider: 'subscribe_demo',
    //   customParams: {
    //     dns: true,
    //   }
    // },

    // /**
    //  * Quantumult
    //  */
    // {
    //   name: 'Quantumult_rules.conf',
    //   template: 'quantumult_rules',
    //   provider: 'subscribe_demo',
    // },
    // {
    //   name: 'Quantumult.conf',
    //   template: 'quantumult',
    //   provider: 'subscribe_demo',
    // },
    // {
    //   // 给 Quantumult 提供订阅地址
    //   name: 'Shadowsocks_subscribe.conf',
    //   template: 'shadowsocks_subscribe',
    //   provider: 'subscribe_demo',
    // },

    // /**
    //  * Quantumult X
    //  */
    // {
    //   name: 'QuantumultX_rules.conf',
    //   template: 'quantumultx_rules',
    //   provider: 'demo',
    // },
    // {
    //   name: 'QuantumultX.conf',
    //   template: 'quantumultx',
    //   provider: 'demo',
    // },
    // {
    //   name: 'QuantumultX_subscribe_us.conf',
    //   template: 'quantumultx_subscribe',
    //   provider: 'demo',
    //   customParams: {
    //     magicVariable: utils.usFilter,
    //   },
    // },
    // {
    //   name: 'QuantumultX_subscribe_hk.conf',
    //   template: 'quantumultx_subscribe',
    //   provider: 'demo',
    //   customParams: {
    //     magicVariable: utils.hkFilter,
    //   },
    // },
  ],
  /**
   * 订阅地址的前缀部分，以 / 结尾
   * 例如阿里云 OSS 的访问地址 https://xxx.oss-cn-hangzhou.aliyuncs.com/
   */
  urlBase: 'https://example.com/',
  surgeConfig: {
    resolveHostname: true,
  },
  binPath: {
    // 安装教程: https://surgio.royli.dev/guide/install-ssr-local.html
    shadowsocksr: '/usr/local/bin/ssr-local',
    v2ray: '/usr/local/bin/v2ray',
  },
  upload: {
    // 默认保存至根目录，可以在此修改子目录名，以 / 结尾，默认为 /
    prefix: '/',
    bucket: 'surgio-store',
    // 支持所有区域
    region: 'oss-cn-hangzhou',
    // 以下信息于阿里云控制台获得
    accessKeyId: 'YOUR_ACCESS_KEY_ID',
    accessKeySecret: 'YOUR_ACCESS_KEY_SECRET',
  },
  // 非常有限的报错信息收集
  analytics: true,

  
};

