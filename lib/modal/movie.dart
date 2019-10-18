class Movie {
  String imageUrl;
  String title;
  String director;
  String year;
  String country;
  String minutes;
  String describe;
  List<String> screenshots;

  Movie(
      {this.imageUrl,
      this.title,
      this.director,
      this.year,
      this.country,
      this.minutes,
      this.screenshots,
      this.describe});
}

final List<Movie> movies = [
  Movie(
      imageUrl:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571899522&di=9e5cf676542fbe0c1c1dba76c2f938cc&imgtype=jpg&er=1&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F89d04806b349e44fd02507e6ab2deb17c7b4aebb.jpg',
      title: '哪吒之魔童降世',
      director: '饺子',
      year: '2019',
      country: '中国',
      minutes: '110',
      describe:
          '天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？',
      screenshots: [
        'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike220%2C5%2C5%2C220%2C73/sign=0fc60aa0f5f2b211f0238d1cabe90e5d/b8389b504fc2d5629acbbc3ee91190ef77c66c25.jpg',
        'https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike220%2C5%2C5%2C220%2C73/sign=0dd18f818b35e5dd8421ad8d17afcc8a/9d82d158ccbf6c81c219433bb23eb13533fa4032.jpg',
        'https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike220%2C5%2C5%2C220%2C73/sign=28d59fbf1e38534398c28f73f27adb1b/37d12f2eb9389b50523d8c818b35e5dde6116e26.jpg'
      ]),
  Movie(
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571304882747&di=2683e652b538736405269e6d62a083d6&imgtype=0&src=http%3A%2F%2Fpuui.qpic.cn%2Fqqvideo_ori%2F0%2Fb30002tv9w4_496_280%2F0.jpg',
    title: '我和我的祖国',
    director: '陈凯歌,张一白等',
    describe: '七位导演分别取材新中国成立70周年以来，祖国经历的无数个历史性经典瞬间。讲述普通人与国家之间息息相关密不可分的动人故事。聚焦大时代大事件下，普通人和国家之间，看似遥远实则密切的关联，唤醒全球华人共同回忆。',
    year: '2019',
    country: '中国',
    minutes: '158',
    screenshots: ['https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=0fb6fb3a703e6709ba0045ff0bc79fb8/0eb30f2442a7d93360a5e36ea24bd11373f00199.jpg',
    'https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=277683183cfa828bd5239de3cd1f41cd/80cb39dbb6fd52664b5e3b09a418972bd40736b1.jpg',
    'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=d55c068551df8db1b82e7c643923dddb/4610b912c8fcc3ce4ac1ce2e9d45d688d43f20ad.jpg',
    'https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=e5d7d4e074899e517c8e3a1472a7d990/dbb44aed2e738bd46331b52cae8b87d6277ff99f.jpg',
    'https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=2d6c01d78d8ba61edbeec82f713497cc/38dbb6fd5266d016957d9935982bd40735fa3542.jpg',
    'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=59411d03b6389b503cffe052b534e5f1/bd3eb13533fa828bc98e9afef21f4134970a5a79.jpg',
    'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=4ea914ba56ee3d6d26c687cb73176d41/3b87e950352ac65c0fac616ef4f2b21193138a05.jpg']
  ),
  Movie(
      imageUrl:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571304932862&di=b0d5a58dd25e13e1397a6405b629f7b0&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20190917%2F10dd465a62b64513a38b24bd4735da6a.jpeg',
      title: '中国机长',
      director: '刘伟强',
  year: '2019',
  country: '中国',
  minutes: '111',
  describe: '四川航空3U8633航班机组执行航班任务时，在万米高空突遇驾驶舱风挡玻璃爆裂脱落、座舱释压的极端罕见险情。机组成员凭借着极少仍在工作状态的仪器，艰难地进行手动驾驶。座舱释压发生时，乘务组立即执行释压处置程序，指导旅客使用氧气面罩，并训练有素地喊出：“请大家相信我们，相信我们有信心、有能力带领大家安全落地。”生死关头，英雄机组的正确处置，确保了机上全体人员的生命安全，创造了世界民航史上的奇迹。',
  screenshots: ['https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike116%2C5%2C5%2C116%2C38/sign=95c3a24d0d087bf469e15fbb93ba3c49/08f790529822720e84a57ffc74cb0a46f21fab49.jpg',
  'https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=41709d368413632701e0ca61f0e6cb89/fcfaaf51f3deb48fdcfba034fe1f3a292cf5784d.jpg',
    'https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=4bfa8155825494ee932f074b4c9c8b9b/aec379310a55b31953e0829f4da98226cffc173a.jpg']),
  Movie(
      imageUrl:
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571304992007&di=5158104730c7c7617f5dfda464aa30ac&imgtype=0&src=http%3A%2F%2Fwx3.sinaimg.cn%2Flarge%2F9c2b5f31ly1g49rjzv7adj20go09c0t9.jpg',
      title: '银河补习班',
      director: '邓超,俞白眉',
      year: '2019',
      country: '中国',
      minutes: '147',
      describe:
          '浩瀚太空，航天员意外失联，生命最大的绝境中，他回忆起自己那个最了不起的爸爸。一对父子跨越漫长的时光，守护爱和亲情，故事充满了欢乐、温暖、泪水与奇观。',
      screenshots: [
        'https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike272%2C5%2C5%2C272%2C90/sign=db80aeec5782b2b7b392319650c4a08a/e4dde71190ef76c6dd2bcdc39316fdfaae516758.jpg',
        'https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike272%2C5%2C5%2C272%2C90/sign=41a686edebdde711f3df4ba4c686a57e/dc54564e9258d109271a9f5adf58ccbf6d814d58.jpg',
        'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike272%2C5%2C5%2C272%2C90/sign=f5b4377050df8db1a8237436684ab631/241f95cad1c8a78660c37ce66909c93d71cf5068.jpg',
        'https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike272%2C5%2C5%2C272%2C90/sign=f5039ce5f6dcd100d991f07313e22c75/5366d0160924ab1859efd7df3bfae6cd7a890b58.jpg'
      ])
];
