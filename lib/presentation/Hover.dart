import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class HoverEffect extends StatelessWidget {
  const HoverEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HoverWidget(
          hoverChild: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ProductRow(
              width: MediaQuery.of(context).size.width,
              title: "Crypter - NFT UI Kit icon",
              price: "\$2,453.80",
              isActive: "Deactive",
              textColor: Colors.green,
              contColor: const Color(0xFFFEE9EE),
            ),
          ),
          onHover: (event) {},
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ProductRow(
              width: MediaQuery.of(context).size.width,
              title: "Crypter - NFT UI Kit icon",
              price: "\$2,453.80",
              isActive: "Deactive",
              textColor: Colors.red,
              contColor: const Color(0xFFFEE9EE),
            ),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   body: Center(
    //     child: HoverWidget(
    //       hoverChild: Container(
    //         decoration: const BoxDecoration(
    //             color: Color(0xffE0B555),
    //             borderRadius: BorderRadius.only(
    //                 bottomLeft: Radius.circular(10),
    //                 bottomRight: Radius.circular(10))),
    //         height: 100,
    //         width: MediaQuery.of(context).size.width * .43,
    //         child: const Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text("data"),
    //             SizedBox(
    //               width: 3,
    //             ),
    //             Icon(Icons.arrow_forward, color: Colors.white)
    //           ],
    //         ),
    //       ),
    //       onHover: (event) {},
    //       child: Container(
    //         decoration: const BoxDecoration(
    //             color: Colors.blue,
    //             borderRadius: BorderRadius.only(
    //                 bottomLeft: Radius.circular(10),
    //                 bottomRight: Radius.circular(10))),
    //         height: 100,
    //         width: MediaQuery.of(context).size.width * .43,
    //         child: const Center(child: Text("data")),
    //       ),
    //     ),
    //   ),
    // );
  }
}

class ProductRow extends StatelessWidget {
  const ProductRow({
    super.key,
    required this.width,
    required this.title,
    required this.price,
    required this.isActive,
    required this.textColor,
    required this.contColor,
  });

  final double width;
  final String title;
  final String price;
  final String isActive;
  final Color textColor;
  final Color contColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: width,
      child: Row(
        children: [
          Container(
            width: (width / 5) > 60 ? 60 : (width / 5),
            height: 65,
            decoration: const BoxDecoration(
              color: Color(0xFFEFEFEF),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                price,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: contColor,
                  borderRadius: const BorderRadius.all(Radius.circular(7)),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Text(
                      isActive,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
