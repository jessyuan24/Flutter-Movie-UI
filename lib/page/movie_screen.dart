import 'package:flutter/material.dart';
import '../modal/movie.dart';
import '../widget/circular_clipper.dart';
import '../widget/contentscroll.dart';

class MovieScreen extends StatefulWidget {

  Movie movie;

  MovieScreen({this.movie});

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0, -50, 0),
                child: Hero(
                  tag: widget.movie.title,
                  child: ClipShadowPath(
                    clipper: CircularClipper(),
                    shadow: Shadow(blurRadius: 20.0),
                    child: Image.network(
                      widget.movie.imageUrl,
                      height: 400,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 25),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: IconTheme(data: IconThemeData(color: Colors.white, size: 30), child: Icon(Icons.arrow_back)),
                    color: Colors.black,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(right: 25),
                    onPressed:null,
                    icon: IconTheme(data: IconThemeData(color: Colors.white, size: 30), child: Icon(Icons.favorite_border)),
                    color: Colors.black,
                  ),
                ],
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RawMaterialButton(
                    fillColor: Colors.white,
                    shape: CircleBorder(),
                    child: Icon(Icons.play_arrow, size: 60, color: Colors.red,),
                  ),
                )
              ),
              Positioned(
                bottom: 0.0,
                left: 25.0,
                child: Icon(Icons.add, size: 40.0,),
              ),
              Positioned(
                bottom: 0.0,
                right: 25.0,
                child: Icon(Icons.share, size: 30.0,),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: <Widget>[
                Text(widget.movie.title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text('评分 :    ⭐ ⭐ ⭐ ⭐', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('导演', style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text(widget.movie.director, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                        ]
                      ),
                      Column(
                        children: <Widget>[
                          Text('国家', style: TextStyle(fontSize: 15,color: Colors.grey),),
                          Text(widget.movie.country, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('时长(分钟)', style: TextStyle(fontSize: 15,color: Colors.grey),),
                          Text('${widget.movie.minutes}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  child: Text(widget.movie.describe, style: TextStyle(color: Colors.grey),),
                ),
                SizedBox(height: 20,),
                ContentScroll(
                  images: widget.movie.screenshots,
                  title: '剧照',
                  imageHeight: 100,
                  imageWidth: 150,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
