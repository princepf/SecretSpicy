import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'component/categories.dart';
import 'component/recipebundlecard.dart';
import 'model/recipe_bundle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Image.asset("assets/images/logo.png"),
          actions: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg"),
              onPressed: () {},
            ),
            const SizedBox(width: 10)
          ],
        ),
        body: Column(children: [
          const Categories(),
          Expanded(
            child: ListView.builder(
                itemCount: racipeBundle.length,
                itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: RecipeBundleCard(
                        press: () {}, recipeBundles: racipeBundle[index]))),
          )
        ]),
      ),
    );
  }
}
