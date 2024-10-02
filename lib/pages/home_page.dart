// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey sportsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  final List<Map<String, String>> projects = [
    {
      'title': 'Gorilla Workout App',
      'description':
          'Developed a Street Workout app using Flutter, featuring multi-language support, training databases, and animations. Over 1,000 downloads on Google Play Store.',
      'image': 'images/koznotech.png', // Resim dosyası yolu
    },
    {
      'title': 'Adam the Humanoid',
      'description':
          'Developed a humanoid AI using Python and Google Vertex AI, integrating servo motors and Arduino for movement. Fine-tuned AI models for improved speech, object, and face recognition.',
      'image': 'images/koznotech.png',
    },
    {
      'title': 'Johnny the Humanoid',
      'description':
          'Developed a humanoid AI using Python and Google Vertex AI, integrating servo motors and Arduino for movement. Fine-tuned AI models for improved speech, object, and face recognition.',
      'image': 'images/koznotech.png',
    },
    {
      'title': 'Pencil 2D Platformer',
      'description':
          'Developing a 2D platformer game using Godot, targeting multiple platforms.',
      'image': 'images/koznotech.png',
    }
  ];

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.sizeOf(context).width >= 600;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: isDesktop ? const Text('Ömer Faruk Kuş') : null,
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
                        style: TextStyle(fontSize: 48),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              scrollToSection(projectsKey);
                            },
                            child: Text('PROJECTS'),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: Text('RESUME'),
                            icon: Icon(Icons.download),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                key: projectsKey,
                child: Column(
                  children: [
                    Text('PROJECTS'),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 1600),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(32),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 700,
                        ),
                        itemCount: projects.length,
                        itemBuilder: (BuildContext context, int index) {
                          final project = projects[index];
                          return Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Expanded kullanarak resmin boyutunu artırıyoruz
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          project['image']!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      project['title']!,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 8),
                                    // Metin için esneklik sağlıyoruz ama taşma kontrolü ekliyoruz
                                    Flexible(
                                      child: Text(
                                        project['description']!,
                                        textAlign: TextAlign.center,
                                        maxLines:
                                            2, // Satır sayısını sınırlayın
                                        overflow: TextOverflow
                                            .ellipsis, // Taşma durumunda üç nokta göster
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
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
                height: 80,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    '© 2024 Ömer Faruk Kuş. All rights reserved. Developed with Flutter.',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
