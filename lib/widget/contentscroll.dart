import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentScroll extends StatelessWidget {

  final List<String> images;
  final String title;
  final double imageHeight;
  final double imageWidth;

  ContentScroll({
    this.images,
    this.title,
    this.imageHeight,
    this.imageWidth
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {},
              )
            ],
          ),
        ),
        Container(
          height: imageHeight * 1.2,
//          width: double.infinity,
          child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 5.0),
                      blurRadius: 8
                    )
                  ]
                ),
                width: imageWidth,
                height: imageHeight,
                child: Image.network(images[index], fit: BoxFit.fill,),
              );
            },
          ),
        )
      ],
    );
  }


}
