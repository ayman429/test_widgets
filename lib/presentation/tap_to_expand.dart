import 'package:flutter/material.dart';
import 'package:tap_to_expand/tap_to_expand.dart';

class TapToExpandWidget extends StatelessWidget {
  const TapToExpandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TapToExpandLetter(
              height: 200,
              width: 300,
              // autoClose: false, default is true
              title: Text(
                'Tap to Expand',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              content: Column(
                children: [
                  Text(
                    'Feel free to use the code in your projects but do not forget to give me the credits adding  (Flutter Animation Gallery) where you are gonna use it.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // Image.asset(
                  //   'assets/image_ex.png',
                  //   width: 150,
                  //   height: 150,
                  // ),
                ],
              ),
              centerWidget: Icon(
                Icons.expand_less_rounded,
                size: 50,
              ),
            ),
            const SizedBox(height: 20),
            for (var i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: TapToExpand(
                    content: Center(
                      child: Column(
                        children: <Widget>[
                          for (var i = 0; i < 20; i++)
                            Text(
                              "data $i",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                        ],
                      ),
                    ),
                    iconColor: Colors.black,
                    title: const Text(
                      'TapToExpand',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    spaceBetweenBodyTitle: 5,
                    closedHeight: 70,
                    isScrollable: true,
                    borderRadius: BorderRadius.circular(10),
                    openedHeight: 250,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
