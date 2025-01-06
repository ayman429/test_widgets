// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../util/adaptive_layout_widget.dart';

class ResposiveHight extends StatelessWidget {
  const ResposiveHight({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => LoginItem(
          height: hight,
          width: width,
          mobileTablet: true,
        ),
        tabletLayout: (context) => Row(
          children: [
            SizedBox(
              // color: Colors.amber,
              height: hight,
              width: width / 2,
              child:
                  Image.asset(fit: BoxFit.fill, "assets/images/rgb_img1.png"),
            ),
            LoginItem(height: hight, width: width, mobileTablet: false)
          ],
        ),
        desktopLayout: (context) => Row(
          children: [
            SizedBox(
              // color: Colors.amber,
              height: hight,
              width: width / 2,
              child:
                  Image.asset(fit: BoxFit.fill, "assets/images/rgb_img1.png"),
            ),
            LoginItem(height: hight, width: width, mobileTablet: false)
          ],
        ),
      ),
    );
  }
}

class LoginItem extends StatelessWidget {
  LoginItem({
    super.key,
    required this.width,
    required this.height,
    required this.mobileTablet,
  });
  final double height;
  final double width;
  bool mobileTablet = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: IntrinsicHeight(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: height / 2,
                    width: mobileTablet ? width : width / 2,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    height: height / 2,
                    width: mobileTablet ? width : width / 2,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsetsDirectional.all(30),
              decoration: BoxDecoration(
                // border: Border(),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              width: mobileTablet ? width - 60 : width / 2 - 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Welcome back",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff100E28),
                        ),
                      ),
                      const Text(
                        "Continue with",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff797979),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialMedia(
                            image: "assets/images/logos_google.png",
                            name: "Google",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SocialMedia(
                            image: "assets/images/logos_facebook.png",
                            name: "Facebook",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SocialMedia(
                            image: "assets/images/logos_twitter.png",
                            name: "Twitter",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsetsDirectional.only(
                                  top: 30, start: 30, end: 10),
                              height: 2,
                              color: const Color(0xffE8E8E8),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text("Or"),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsetsDirectional.only(
                                  top: 30, start: 10, end: 30),
                              height: 2,
                              color: const Color(0xffE8E8E8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 30, top: 10, bottom: 10),
                    child: Text(
                      "E-mail",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff100E28),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Color(0xff0097EC),
                          ),
                          hintText: "E-mail@gmail.com",
                          hintStyle: const TextStyle(
                              fontSize: 14, color: Color(0xff797979)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 30, top: 10, bottom: 10),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff100E28),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.password,
                            color: Color(0xff0097EC),
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xff2B3A70),
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(
                              fontSize: 14, color: Color(0xff797979)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 30, top: 10, bottom: 30),
                    child: MaterialButton(
                      color: const Color(0xff0097EC),
                      height: 50,
                      minWidth: mobileTablet ? width - 90 : width / 2 - 110,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  // Container(
                  //   height: 100,
                  //   width: 100,
                  //   decoration: BoxDecoration(
                  //       color: const Color(0xff0097EC),
                  //       borderRadius: BorderRadius.circular(10)),
                  //   child: TextButton(
                  //     onPressed: () {},
                  //     child: const Text(
                  //       "Login",
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMedia extends StatelessWidget {
  String image, name;
  SocialMedia({
    super.key,
    required this.image,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: const Color(0xffE8E8E8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 12,
              width: 12,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xff100E28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
