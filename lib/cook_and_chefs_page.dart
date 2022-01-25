import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'model/recipe_bundle.dart';

class CookAndChefsPage extends StatefulWidget {
  const CookAndChefsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CookAndChefsPage> createState() => _CookAndChefsPageState();
}

class _CookAndChefsPageState extends State<CookAndChefsPage> {
  List<VegCards> vegcard = [
    VegCards(
      chefimage: 'assets/images/chef_1.png',
      chefname: 'Wolfgang Puck',
      dishimage: 'assets/images/dish1.png',
      titles: 'Berry and oats Breakfast Bowl',
      time: '20',
      color: const Color(0xFFD82D40),
    ),
    VegCards(
      chefimage: 'assets/images/chef_2.png',
      chefname: 'Jamie Oliver',
      dishimage: 'assets/images/dish2.png',
      titles: 'Green Salad with the Vegetable',
      time: '25',
      color: const Color(0xFF90AF17),
    ),
    VegCards(
      chefimage: 'assets/images/chef_3.png',
      chefname: 'Heston Blumenthal',
      dishimage: 'assets/images/dish3.png',
      titles: 'Berry and oats Breakfast Bowl',
      time: '38',
      color: const Color(0xFF2DBBD8),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: const Text(
                "Cook Somthing New \nEveryday",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
                maxLines: 2,
              ),
            ),

            //Veg Card
            Container(
              height: 380,
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: vegcard.length,
                itemBuilder: (context, index) => GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.white,
                          height: 350,
                          width: 240,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                                color: vegcard[index].color,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(),
                                const Icon(
                                  Icons.signal_cellular_alt_rounded,
                                  color: Colors.white,
                                ),
                                const Text(
                                  "Med",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.alarm,
                                  color: Colors.white,
                                ),
                                Text(
                                  "${vegcard[index].time} M",
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Spacer(),
                                Text(
                                  vegcard[index].titles,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  vegcard[index].chefimage))),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Text(
                                        vegcard[index].chefname,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage(vegcard[index].dishimage))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Top Chefs text
            Container(
                color: const Color.fromARGB(99, 255, 205, 130),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: const Text(
                            "Top Chefs",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                            maxLines: 2,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    //Top Chefs
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) => Container(
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                height: 200,
                                width: 140,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(1, 5),
                                          color: Colors.grey,
                                          blurRadius: 5,
                                          spreadRadius: 1)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              // fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/chef_1.png"))),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Jhon Doe",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: SvgPicture.asset(
                                                "assets/icons/heart_fill.svg")),
                                        const Text("2352")
                                      ],
                                    )
                                  ],
                                ),
                              )),
                    ),
                  ],
                )),

            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: const Text(
                    "Top Chefs",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                    maxLines: 2,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                  color: Colors.grey,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
