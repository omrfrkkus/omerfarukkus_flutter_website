// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey sportsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          child: Text('Ömer Faruk Kuş'),
          onPressed: () {
            scrollToSection(aboutKey);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () => scrollToSection(aboutKey),
              child: const Text('About'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () => scrollToSection(projectsKey),
              child: const Text('Projects'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () => scrollToSection(sportsKey),
              child: const Text('Sports'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () => scrollToSection(contactKey),
              child: const Text('Contact'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              key: aboutKey,
              height: 800,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEY, I'M ÖMER FARUK KUŞ",
                      style: TextStyle(fontSize: 24),
                    ),
                    TextButton(
                      onPressed: () {
                        scrollToSection(projectsKey);
                      },
                      child: Text('PROJECTS'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              key: projectsKey,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.abc),
                          Text('Project $index'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              key: sportsKey,
              height: 600,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Sports Section',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Container(
              key: contactKey,
              height: 600,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  'Contact Section',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 200,
              color: Colors.black,
              child: const Center(
                child: Text(
                  'About Section',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
