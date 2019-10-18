import 'package:flutter/material.dart';
import '../modal/movie.dart';
import '../widget/contentscroll.dart';
import 'movie_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;

  List<String> category = [
    '科幻片',
    '喜剧片',
    '动作片',
    '剧情片',
    '教育片',
    '恐怖片'
  ];

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _movieSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 220.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(
            builder: (_)=> MovieScreen(movie: movies[index],)
          ));
        },
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0.0, 2),
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Center(
              child: Hero(
                tag: movies[index].title,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    movies[index].imageUrl,
                    height: 230.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('电影网', style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.only(left: 25.0),
          onPressed: () => print('Menu'),
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 25.0),
            onPressed: () => print('Search'),
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250.0,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return _movieSelector(index);
              },
            ),
          ),
          Container(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlue]
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.black,
                      offset: Offset(0.0,1.0),
                      blurRadius: 6.0)
                    ]
                  ),
                  child: Center(
                    child: Text(category[index],
                      style: TextStyle(color: Colors.white,
                      fontSize: 20.0,fontWeight: FontWeight.bold),
                    ),
                  )
                );
              },
            ),
          ),
          SizedBox(height: 10.0,),
          ContentScroll(
            images: [
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571906400&di=f69008227e31dfeb10206ddf9f4f6cc2&imgtype=jpg&er=1&src=http%3A%2F%2F07imgmini.eastday.com%2Fmobile%2F20190227%2F20190227043022_f11ae0c6ba3fd9ec92471a9a5c1991cf_5.jpeg',
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571311697743&di=392278baa7e43c580e21a4a757167178&imgtype=0&src=http%3A%2F%2Ft.860816.com%2Fuploads%2Fallimg%2F180611%2F1616095041-7.jpg',
              'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3200300597,2749279227&fm=26&gp=0.jpg',
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571906460&di=1e4ea81955d3c057c342408fc79240fa&imgtype=jpg&er=1&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20190213%2F3125a01e01af4719b2f03806f493b8a1.jpeg',
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571311785991&di=52d1b7d3e85ec3c148645a5b9460c539&imgtype=0&src=http%3A%2F%2F09imgmini.eastday.com%2Fmobile%2F20180919%2F20180919114448_19f7af4abd1ee6f0e03b3b243aac9742_1.jpeg'],
            title: '我喜欢',
            imageWidth: 120,
            imageHeight: 160,
          ),
          ContentScroll(
            images: [
              'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1390239399,2866068300&fm=26&gp=0.jpg',
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571311891960&di=c8d48d9b363311745d82e6c6e454dd69&imgtype=0&src=http%3A%2F%2Fdmimg.5054399.com%2Fallimg%2F190222%2F29_190222105442_1.jpg',
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571311913430&di=a3f8afdc869fe8317c11e4c8c48f15fe&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F0fdb3e205f981306486ff4b74137d5016e7c2aa581c98-Ej4wQq_fw658',
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571311943350&di=3e8ade29126016adb0c5a248d5d2c898&imgtype=0&src=http%3A%2F%2Fupload.cankaoxiaoxi.com%2F2018%2F1213%2F1544666440767.jpg',
            ],
            title: '热门',
            imageWidth: 120,
            imageHeight: 160,
          )
        ],
      ),
    );
  }
}
