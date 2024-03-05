// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/view/search_screen/widgets/custom_search_result_grid.dart';
import 'package:instagram_clone_application/view/search_screen/widgets/search_category_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    isDense: true,
                    fillColor: ColorConstant.primaryBlack.withOpacity(0.1),
                    filled: true,
                    hintText: "Search",
                    prefixIconConstraints: BoxConstraints(minWidth: 30),
                    prefixIcon: Icon(Icons.search, size: 20),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              )),
              IconButton(onPressed: () {}, icon: Icon(Icons.select_all_rounded))
            ],
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color:
                                ColorConstant.primaryBlack.withOpacity(0.1)))),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => Padding(
                              padding: const EdgeInsets.all(5),
                              child: SearchCatecgoryCard(
                                  icon: index.isEven ? Icons.add : null),
                            )),
                  ),
                ),
              )),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) =>
                CustomSearchResultGrid(isIndexEven: index.isEven)));
  }
}
