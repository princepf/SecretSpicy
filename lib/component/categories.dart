import 'package:flutter/material.dart';

import '../colors.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectIndex = 0;
    List categories = ['All', 'Indian', 'Italian', 'Mexican', 'Chinese'];

    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            selectIndex = index;
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: index == selectIndex
                    ? const Color(0XFFEFF3EE)
                    : Colors.transparent),
            child: Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectIndex == index
                    ? pPrimaryColor
                    : const Color(0xFFC2C2B5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
