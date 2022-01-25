import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/recipe_bundle.dart';

class RecipeBundleCard extends StatelessWidget {
  const RecipeBundleCard(
      {Key? key,
      required this.press,
      required this.recipeBundles,
      recipeBundle})
      : super(key: key);

  final RacipeBundle recipeBundles;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AspectRatio(
        aspectRatio: 1.65,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: recipeBundles.color,
          ),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      recipeBundles.title,
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      recipeBundles.description,
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    buildInfoRow(
                      iconSrc: "assets/icons/pot.svg",
                      text: "${recipeBundles.recipes} Recipes",
                    ),
                    const SizedBox(height: 10),
                    buildInfoRow(
                      iconSrc: "assets/icons/chef.svg",
                      text: "${recipeBundles.chefs} Chefs",
                    ),
                    const Spacer(),
                  ],
                ),
              )),
              const SizedBox(
                width: 5,
              ),
              AspectRatio(
                  aspectRatio: 0.71, child: Image.asset(recipeBundles.imageSrc))
            ],
          ),
        ),
      ),
    );
  }

  Row buildInfoRow({required String iconSrc, text}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconSrc),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
