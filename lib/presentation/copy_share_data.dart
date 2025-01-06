import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class CopyAndShareData extends StatelessWidget {
  const CopyAndShareData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Clipboard.setData(const ClipboardData(text: "ayman mansour"));
              },
              child: const Icon(Icons.copy, size: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await Share.share("ayman");
                } catch (e) {
                  print(e);
                }
                // print(result.status);
                // if (result.status == ShareResultStatus.success) {
                //   print('Thank you for sharing my website!');
                // }
              },
              child: const Icon(Icons.share, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}
