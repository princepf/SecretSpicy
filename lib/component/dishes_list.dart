import 'package:flutter/material.dart';

import '../model/recipe_bundle.dart';

class DishesList extends StatelessWidget {
  const DishesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DiffDish> diffdish = [
      DiffDish(
          dishimage: 'assets/images/vegdish1.png',
          dishname: 'Mixed Bhajiya',
          dishdes:
              'You can make bhajia with diffrent types of veggies of your choice.',
          star: '5.0',
          price: '50',
          minute: '45'),
      DiffDish(
          dishimage: 'assets/images/vegdish2.png',
          dishname: 'Butternut Lasagna',
          dishdes:
              'perfect for the weeknights and special for your holiday table',
          star: '4.5',
          price: '45',
          minute: '34'),
      DiffDish(
          dishimage: 'assets/images/vegdish3.png',
          dishname: 'Gujarati Thepla',
          dishdes: 'The origin of Thepla is Gujarat and It is our staple diet.',
          star: '4.9',
          price: '30',
          minute: '35'),
      DiffDish(
          dishimage: 'assets/images/vegdish4.png',
          dishname: 'Broccoli Quinoa Cakes',
          dishdes:
              'Delicious healthy vegetarian meal that your family will love.',
          star: '4.2',
          price: '52',
          minute: '45'),
      DiffDish(
          dishimage: 'assets/images/vegdish5.png',
          dishname: 'Chana Masala',
          dishdes:
              'Chana Masala is a classic Indian stew typically made with spiced.',
          star: '4.8',
          price: '35',
          minute: '35'),
      DiffDish(
          dishimage: 'assets/images/vegdish6.png',
          dishname: 'Baked Ziti',
          dishdes:
              'Spinach and Mushrooms that can be made in one pan and adaptable.',
          star: '4.3',
          price: '68',
          minute: '30'),
      DiffDish(
          dishimage: 'assets/images/vegdish7.png',
          dishname: 'Butternut Risotto',
          dishdes:
              'Instant Pot or on the stovetop Vegan-adaptable and Gluten-free.',
          star: '4.0',
          price: '54',
          minute: '28'),
    ];

    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 600,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: diffdish.length,
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(children: [
              Container(
                height: 120,
                width: double.infinity,
                color: Colors.transparent,
              ),
              Positioned(
                right: 15,
                child: Container(
                  height: 120,
                  width: 315,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 70, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          diffdish[index].dishname,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          diffdish[index].dishdes,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.alarm,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(diffdish[index].minute),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(diffdish[index].star),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                bottom: 0,
                child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Text(
                      "\$ ${diffdish[index].price}",
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
              Positioned(
                top: 2,
                left: 20,
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
              ),
              Positioned(
                left: 15,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(diffdish[index].dishimage))),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
