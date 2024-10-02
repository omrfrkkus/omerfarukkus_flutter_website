import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey sportsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  final List<Map<String, String>> projects = [
    {
      'title': 'Street Workout App',
      'description': 'A Flutter app with training plans and animations.',
      'image': 'images/koznotech.png',
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
  ];

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 400),
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
            TextButton(
              onPressed: () => scrollToSection(aboutKey),
              child: const Text('About'),
            ),
            TextButton(
              onPressed: () => scrollToSection(projectsKey),
              child: const Text('Projects'),
            ),
            TextButton(
              onPressed: () => scrollToSection(sportsKey),
              child: const Text('Sports'),
            ),
            TextButton(
              onPressed: () => scrollToSection(contactKey),
              child: const Text('Contact'),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              key: aboutKey,
              child: SizedBox(
                height: 800,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "HEY, I'M ÖMER FARUK KUŞ",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              scrollToSection(projectsKey);
                            },
                            child: const Text('PROJECTS'),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: const Text('RESUME'),
                            icon: const Icon(Icons.file_download_outlined),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              key: projectsKey,
              child: Column(
                children: [
                  Text(
                    'PROJECTS',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(32),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 700,
                    ),
                    itemCount: projects.length,
                    itemBuilder: (BuildContext context, int index) {
                      final project = projects[index];
                      return Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  Dialog.fullscreen(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text('This is a fullscreen dialog.'),
                                    const SizedBox(height: 15),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Close'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        project['image']!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    project['title']!,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 8),
                                  Flexible(
                                    child: Text(
                                      project['description']!,
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              key: sportsKey,
              child: SizedBox(
                  height: 600,
                  child: Column(children: [
                    Text(
                      'SPORTS',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ])),
            ),
            SliverToBoxAdapter(
              key: contactKey,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'CONTACT',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              _launchURL('mailto:omerfaruk.kus@outlook.com');
                            },
                            icon: const Icon(Icons.email),
                            label: const Text('Email'),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 24.0),
                              backgroundColor: Colors.blueAccent,
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              _launchURL(
                                  'https://www.linkedin.com/in/omrfrkkus');
                            },
                            icon: const FaIcon(FontAwesomeIcons.linkedin),
                            label: const Text('LinkedIn'),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 24.0),
                              backgroundColor: Colors.blue[700],
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              _launchURL('https://www.instagram.com/omrfrkkus');
                            },
                            icon: const FaIcon(FontAwesomeIcons.instagram),
                            label: const Text('Instagram'),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 24.0),
                              backgroundColor: Colors.pinkAccent,
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              _launchURL('https://github.com/omrfrkkus');
                            },
                            icon: const FaIcon(FontAwesomeIcons.github),
                            label: const Text('GitHub'),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 24.0),
                              backgroundColor: Colors.black,
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 80,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    ' 2024 Ömer Faruk Kuş. All rights reserved. Developed with Flutter.',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
