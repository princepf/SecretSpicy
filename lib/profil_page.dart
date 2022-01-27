import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thesecretespicy/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: pPrimaryColor,
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"),
            color: Colors.white,
            onPressed: () {},
          ),
          centerTitle: true,
          title: const Text("Profile"),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Edit",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              child: Stack(children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                      color: pPrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(150),
                          bottomRight: Radius.circular(150))),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 8),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/pic.png"))),
                      ),
                      const Text(
                        "Carlos Mejia",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "carlosmejia123@gmail.com",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            ProfileMenuItem(
              iconSrc: "assets/icons/bookmark_fill.svg",
              title: "Saved Recipes",
              press: () {},
            ),
            ProfileMenuItem(
              iconSrc: "assets/icons/chef_color.svg",
              title: "Super Plan",
              press: () {},
            ),
            ProfileMenuItem(
              iconSrc: "assets/icons/language.svg",
              title: "Change Language",
              press: () {},
            ),
            ProfileMenuItem(
              iconSrc: "assets/icons/info.svg",
              title: "Help",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
    required this.iconSrc,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String iconSrc, title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          children: [
            SvgPicture.asset(iconSrc),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
