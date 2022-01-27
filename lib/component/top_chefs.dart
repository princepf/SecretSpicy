import 'package:flutter/material.dart';

import '../model/recipe_bundle.dart';

class TopChefs extends StatelessWidget {
  const TopChefs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Chefsdetail> chefsdetail = [
      Chefsdetail(
          chefimage: 'assets/images/chef_1.png',
          chefname: 'Wolfgang Puck',
          likes: '3465'),
      Chefsdetail(
          chefimage: 'assets/images/chef_2.png',
          chefname: 'Jamie Oliver',
          likes: '4534'),
      Chefsdetail(
          chefimage: 'assets/images/chef_3.png',
          chefname: 'Heston Blume',
          likes: '1558'),
      Chefsdetail(
          chefimage: 'assets/images/chef_4.png',
          chefname: 'Gordon Ramsay',
          likes: '2789'),
      Chefsdetail(
          chefimage: 'assets/images/chef_5.png',
          chefname: 'Racheal Ray',
          likes: '3338'),
      Chefsdetail(
          chefimage: 'assets/images/chef_6.png',
          chefname: 'Alain Ducasse',
          likes: '5002'),
    ];
    return SizedBox(
      height: 190,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: chefsdetail.length,
          itemBuilder: (context, index) => Stack(children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20),
                  height: 200,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 140,
                        child: Image(
                            image: AssetImage(chefsdetail[index].chefimage)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        chefsdetail[index].chefname,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Color(0xFFFF464C),
                            size: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(chefsdetail[index].likes)
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 80,
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 80,
                    color: const Color(0xFFFF464C),
                    child: const Text(
                      "Featured",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ])),
    );
  }
}
