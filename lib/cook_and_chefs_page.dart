import 'package:flutter/material.dart';
import 'package:thesecretespicy/component/dishes_list.dart';
import 'package:thesecretespicy/component/vegdinnercard.dart';

import 'component/top_chefs.dart';

class CookAndChefsPage extends StatefulWidget {
  const CookAndChefsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CookAndChefsPage> createState() => _CookAndChefsPageState();
}

class _CookAndChefsPageState extends State<CookAndChefsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Cook Somthing New \nEveryday",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                    maxLines: 2,
                  ),
                ),
              ),

              //Veg Card
              const VegDinnerCard(),
              const SizedBox(
                height: 10,
              ),

              //Light Color block
              Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(61, 255, 205, 130),
                  ),
                  child: Column(
                    children: [
                      //Top Chefs text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                      const TopChefs(),
                      const SizedBox(
                        height: 40,
                      ),

                      //Dishes List
                      const DishesList(),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
