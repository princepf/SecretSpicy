import 'package:flutter/material.dart';

import '../model/recipe_bundle.dart';

class VegDinnerCard extends StatelessWidget {
  const VegDinnerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<VegCards> vegcard = [
      VegCards(
        chefimage: 'assets/images/chef_1.png',
        chefname: 'Wolfgang Puck',
        dishimage: 'assets/images/dish1.png',
        titles: 'Berry and oats Breakfast Bowl',
        time: '20',
        color: const Color(0xFFFF464C),
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
        chefname: 'Heston Blume',
        dishimage: 'assets/images/dish3.png',
        titles: 'This tomato vodka rigatoni ',
        time: '38',
        color: const Color(0xFF2DBBD8),
      ),
      VegCards(
        chefimage: 'assets/images/chef_4.png',
        chefname: 'Heston Blume',
        dishimage: 'assets/images/dish4.png',
        titles: 'Lemon chicken',
        time: '20',
        color: const Color.fromARGB(255, 216, 176, 45),
      ),
      VegCards(
        chefimage: 'assets/images/chef_3.png',
        chefname: 'Heston Blume',
        dishimage: 'assets/images/dish5.png',
        titles: 'Silverbeet yoghurt and chickpeas',
        time: '40',
        color: const Color.fromARGB(255, 115, 60, 218),
      ),
      VegCards(
        chefimage: 'assets/images/chef_3.png',
        chefname: 'Heston Blume',
        dishimage: 'assets/images/dish6.png',
        titles: 'Thai red fish curry with noodles',
        time: '32',
        color: const Color.fromARGB(255, 255, 167, 35),
      ),
    ];

    return Container(
      height: 380,
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: vegcard.length,
        itemBuilder: (context, index) => GestureDetector(
          child: Container(
            margin: const EdgeInsets.only(left: 15),
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
                    padding: const EdgeInsets.all(20),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        vegcard[index].chefimage,
                                      ))),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                vegcard[index].chefname,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 18),
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
                            image: AssetImage(vegcard[index].dishimage))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
