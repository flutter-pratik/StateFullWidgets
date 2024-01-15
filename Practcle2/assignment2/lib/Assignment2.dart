import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2();
}

class _Assignment2 extends State<Assignment2> {
  bool boxColor1 = false;
  bool boxColor2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Box Color"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: boxColor1 ? Colors.amber : Colors.black,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            boxColor1 = !boxColor1;
                          },
                        );
                      },
                      child: const Text("box1"))
                ]),
                const SizedBox(width: 60),
                Column(children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: boxColor2 ? Colors.amber : Colors.black,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          boxColor2 = !boxColor2;
                        },
                      );
                    },
                    child: const Text("box2"),
                  )
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
