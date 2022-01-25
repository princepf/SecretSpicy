import 'package:flutter/material.dart';

class CookAndChefsPage extends StatefulWidget {
  const CookAndChefsPage({Key? key}) : super(key: key);

  @override
  State<CookAndChefsPage> createState() => _CookAndChefsPageState();
}

class _CookAndChefsPageState extends State<CookAndChefsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.grey,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.bookmark_border_outlined,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: const Text(
              "Cook Somthing New Everyday",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
