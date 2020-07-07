'use strict';
const { utils } = require('surgio');

module.exports = {
  url: 'https://suo.yt/5bQ0yhE',
  type: 'shadowsocks_subscribe',
  addFlag: true,
  udpRelay: true,
  tfo: true,

  customFilters: {
    providerFilter: utils.discardProviders(['回国线路 无法翻墙', '无试用节点，需要购买套餐后订阅节点', '用户']),
  },
};
