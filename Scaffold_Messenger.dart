import 'package:flutter/material.dart';

class PractiseApp extends StatelessWidget {
  const PractiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: Center(
        // Center widget added to center the Column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centering the children
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/google.png",
                          width: 20,
                          height: 30,
                        ),
                        const Text(
                          "Hello Prakash",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                    ),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                );
              },
              child: const Text("Click On Me"),
            ),
          ],
        ),
      ),
    );
  }
}
