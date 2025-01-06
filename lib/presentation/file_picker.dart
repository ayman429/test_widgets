import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerScreen extends StatefulWidget {
  const FilePickerScreen({super.key});

  @override
  _FilePickerScreenState createState() => _FilePickerScreenState();
}

class _FilePickerScreenState extends State<FilePickerScreen> {
  String? selectedFilePath;

  String? selectedFileName;
  Uint8List? selectedFileBytes;

  void selectFile() async {
    // Open the file picker dialog

    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: true, type: FileType.image);
    // allowedExtensions: ['jpg,png']);

    // If the user selects a file

    if (result != null) {
      setState(() {
        // selectedFilePath = result.files.first.path!; // Get the file's path

        selectedFileName = result.files.single.name; // Get the file's name
        selectedFileBytes = result.files.single.bytes;
      });
    } else {
      // User canceled the picker

      setState(() {
        selectedFilePath = null;

        selectedFileName = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select File from PC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: selectFile,
              child: const Text('Pick a File'),
            ),

            const SizedBox(height: 20),
            selectedFileBytes != null
                ? Image.memory(selectedFileBytes!)
                : Container(),
            // Display selected file information

            if (selectedFileName != null) ...[
              Text('Selected File: $selectedFileName',
                  style: const TextStyle(fontSize: 16)),
              Text('File Path: $selectedFilePath',
                  style: const TextStyle(fontSize: 14)),
            ] else ...[
              const Text('No file selected', style: TextStyle(fontSize: 16)),
            ]
          ],
        ),
      ),
    );
  }
}
