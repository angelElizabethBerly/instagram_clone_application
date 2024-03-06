// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomSearchResultGrid extends StatelessWidget {
  const CustomSearchResultGrid({super.key, required this.isIndexEven});
  final bool isIndexEven;

  @override
  Widget build(BuildContext context) {
    List imageList = [
      "https://images.pexels.com/photos/18614182/pexels-photo-18614182/free-photo-of-a-small-church-in-the-middle-of-a-field.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "https://images.pexels.com/photos/18053574/pexels-photo-18053574/free-photo-of-a-man-standing-on-a-boardwalk-and-taking-a-picture-with-a-camera.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "https://images.pexels.com/photos/19892685/pexels-photo-19892685/free-photo-of-a-small-owl-sitting-on-a-branch-in-the-trees.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "https://images.pexels.com/photos/13008754/pexels-photo-13008754.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "https://images.pexels.com/photos/18973615/pexels-photo-18973615/free-photo-of-road-in-mountains.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "https://images.pexels.com/photos/20433014/pexels-photo-20433014/free-photo-of-beach-at-madeira.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
    ];
    return Container(
      child: Column(
        children: [
          isIndexEven
              ? Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/20330737/pexels-photo-20330737/free-photo-of-white-dog-sitting-on-grass.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                            height: MediaQuery.sizeOf(context).width * 0.33,
                          ),
                          Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/20165766/pexels-photo-20165766/free-photo-of-winter-in-porto.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                            height: MediaQuery.sizeOf(context).width * 0.33,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/20349040/pexels-photo-20349040/free-photo-of-train-and-city.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                            height: MediaQuery.sizeOf(context).width * 0.66))
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/7175578/pexels-photo-7175578.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                            height: MediaQuery.sizeOf(context).width * 0.66)),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(1),
                            height: MediaQuery.sizeOf(context).width * 0.33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/19367230/pexels-photo-19367230/free-photo-of-stone-bridge-in-a-forest.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                          ),
                          Container(
                            margin: EdgeInsets.all(1),
                            height: MediaQuery.sizeOf(context).width * 0.33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/20428779/pexels-photo-20428779/free-photo-of-two-women-hugging-each-other-in-front-of-a-white-background.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
          GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageList[index]))),
            ),
          )
        ],
      ),
    );
  }
}
