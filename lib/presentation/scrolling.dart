import 'package:flutter/material.dart';

class TwoListsScrollableScreen extends StatelessWidget {
  const TwoListsScrollableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two Lists Scrollable Example'),
      ),
      body: CustomScrollView(
        slivers: [
          // القائمة الأفقية (في الأعلى)
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    color: index.isEven ? Colors.blue : Colors.green,
                    child: Center(
                      child: Text('Item $index',
                          style: const TextStyle(color: Colors.white)),
                    ),
                  );
                },
              ),
            ),
          ),
          // القائمة الرأسية (تتحرك مع الشاشة)
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 80,
                margin: const EdgeInsets.all(8),
                color: index.isEven ? Colors.orange : Colors.pink,
                child: Center(
                  child: Text('List Item $index',
                      style: const TextStyle(color: Colors.white)),
                ),
              );
            },
          ),

          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) {
          //       return Container(
          //         height: 80,
          //         margin: const EdgeInsets.all(8),
          //         color: index.isEven ? Colors.orange : Colors.pink,
          //         child: Center(
          //           child: Text('List Item $index',
          //               style: const TextStyle(color: Colors.white)),
          //         ),
          //       );
          //     },
          //     childCount: 20, // عدد العناصر في القائمة الرأسية
          //   ),
          // ),
        ],
      ),
    );
  }
}

class Scrolling1 extends StatelessWidget {
  const Scrolling1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two Lists Scrollable Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // القائمة الأفقية (في الأعلى)
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    color: index.isEven ? Colors.blue : Colors.green,
                    child: Center(
                      child: Text('Item $index',
                          style: const TextStyle(color: Colors.white)),
                    ),
                  );
                },
              ),
            ),
            // القائمة الرأسية (تتحرك مع الشاشة)
            ListView.builder(
              itemCount: 20,
              physics:
                  const NeverScrollableScrollPhysics(), // لمنع التمرير داخل القائمة الرأسية فقط
              shrinkWrap: true, // يجعل القائمة الرأسية تأخذ مساحة العناصر فقط
              itemBuilder: (context, index) {
                return Container(
                  height: 80,
                  margin: const EdgeInsets.all(8),
                  color: index.isEven ? Colors.orange : Colors.pink,
                  child: Center(
                    child: Text('List Item $index',
                        style: const TextStyle(color: Colors.white)),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
