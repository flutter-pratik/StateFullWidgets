import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3();
}

class _Assignment3 extends State<Assignment3> {
  int? selectedIndex = 0;

  List<String> selectedImage = [
    "https://media.istockphoto.com/id/1404885250/photo/mahabaleshwar-and-panchagani-nature-and-hill-areas.jpg?s=2048x2048&w=is&k=20&c=Su2wYszfDTThmt7AcCA5OHfGcqFVBxy73W-5YtemT28=",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg"
  ];

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
                  Image.network(
                    selectedImage[selectedIndex!],
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            selectedIndex = selectedIndex! + 1;
                            if (selectedIndex == 4) {
                              selectedIndex = 0;
                            }
                          },
                        );
                      },
                      child: const Text("Next")),
                  const SizedBox(height: 40),
                  ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            selectedIndex = 0;
                          },
                        );
                      },
                      child: const Text("Reset"))
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
