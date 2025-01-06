import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ApiTest extends StatelessWidget {
  const ApiTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  try {
                    Dio(
                      BaseOptions(
                        headers: {
                          'Authorization':
                              'Token 37bb23be1fa2003096eb8498920cb0a8be81f2f8',
                        },
                        connectTimeout: const Duration(seconds: 300),
                        receiveTimeout: const Duration(seconds: 300),
                        // sendTimeout: const Duration(seconds: 300),
                      ),
                    )
                        .getUri(Uri.parse(
                            "https://faytourapp.pythonanywhere.com/api/TourismPlace/"))
                        .then((value) {
                      print("data = ${value.data}");
                    });
                  } on DioException catch (e) {
                    print("e1 =  $e");
                  } catch (e) {
                    print("e2 =  $e");
                  }
                },
                child: const Text("Api Test")),
          ],
        ),
      ),
    );
  }
}
