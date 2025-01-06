import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';

// final Uri _url = Uri.parse('https://flutter.dev');

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Responsive Text',
              style: TextStyle(
                  fontSize: 20 * MediaQuery.of(context).textScaleFactor),
            ),
          ),
          MaterialButton(
            child: const Text("linkedin"),
            onPressed: () {
              _launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/ayman-mansour-258986195/'));
            },
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
