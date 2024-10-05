import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omerfarukkus_flutter_website/project_pages/gorilla.dart';
import 'package:omerfarukkus_flutter_website/services/locale_service.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey sportsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  final List<Map<String, String>> projects = [
    {
      'title': 'Gorilla Workout Mobile App',
      'description':
          'Using Flutter, I developed and published a Street Workout app with multi-language support, professional training databases, and animations. The app has over thousand downloads on Google Play Store.',
      'image': 'images/gorilla.png',
    },
    {
      'title': 'Adam the Humanoid',
      'description':
          'I developed a humanoid AI using Python and Google Vertex AI. The robot integrates hardware components such as servo motors and Arduino for movement control. Additionally, I performed fine-tuning on various AI models, including both cloud-based and offline models, to enhance its speech, object, and face recognition capabilities.',
      'image': 'images/adam.jpeg',
    },
    {
      'title': 'Johnny the Humanoid',
      'description':
          'Developed a humanoid AI using Python and Google Vertex AI, integrating servo motors and Arduino for movement. Fine-tuned AI models for improved speech, object, and face recognition.',
      'image': 'images/johnny.jpg',
    },
    {
      'title': 'Pencil 2D Platformer Game',
      'description': 'A 2D multiplatform platformer game using Godot.',
      'image': 'images/pencil.png',
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
    final localeService = Provider.of<LocaleService>(context);
    final isDesktop = MediaQuery.sizeOf(context).width >= 600;

    return SafeArea(
      child: Scaffold(
        appBar: isDesktop
            ? AppBar(
                title: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () => scrollToSection(aboutKey),
                    child: const Text('Ömer Faruk Kuş')),
                actions: [
                  DropdownButton(
                    value: localeService.currentLocale.languageCode,
                    onChanged: (value) {
                      localeService.changeLocale(value!);
                    },
                    items: [
                      DropdownMenuItem(
                        value: 'en',
                        child: Row(
                          children: [
                            CountryFlag.fromCountryCode(
                              'GB',
                              width: 24,
                              height: 16,
                              shape: const RoundedRectangle(3),
                            ),
                            const SizedBox(width: 6),
                            const Text('English'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'tr',
                        child: Row(
                          children: [
                            CountryFlag.fromCountryCode(
                              'TR',
                              width: 24,
                              height: 16,
                              shape: const RoundedRectangle(3),
                            ),
                            const SizedBox(width: 6),
                            const Text('Türkçe'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'pl',
                        child: Row(
                          children: [
                            CountryFlag.fromCountryCode(
                              'PL',
                              width: 24,
                              height: 16,
                              shape: const RoundedRectangle(3),
                            ),
                            const SizedBox(width: 6),
                            const Text('Polski'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(aboutKey),
                    child: Text(AppLocalizations.of(context)!.about),
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(projectsKey),
                    child: Text(AppLocalizations.of(context)!.projects),
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(sportsKey),
                    child: Text(AppLocalizations.of(context)!.sports),
                  ),
                  TextButton(
                    onPressed: () => scrollToSection(contactKey),
                    child: Text(AppLocalizations.of(context)!.contact),
                  ),
                ],
              )
            : null,
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
                        "${AppLocalizations.of(context)!.hey} ÖMER FARUK KUŞ",
                        style: Theme.of(context).textTheme.displaySmall,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              scrollToSection(projectsKey);
                            },
                            child: Text(AppLocalizations.of(context)!
                                .projects
                                .toUpperCase()),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: Text(AppLocalizations.of(context)!
                                .resume
                                .toUpperCase()),
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
                    AppLocalizations.of(context)!.projects.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  isDesktop
                      ? Divider(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 1,
                          indent: 64,
                          endIndent: 64,
                        )
                      : Divider(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 1,
                          indent: 32,
                          endIndent: 32,
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
                                    const GorillaWorkout(height: 600),
                                    const SizedBox(height: 16),
                                    Text(project['description']!,
                                        textAlign: TextAlign.center),
                                    const SizedBox(height: 15),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 48),
                                        child: Text(
                                            AppLocalizations.of(context)!
                                                .close),
                                      ),
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
                                  const SizedBox(height: 16),
                                  Expanded(
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
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        project['description']!,
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        AppLocalizations.of(context)!
                                            .click_more,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              key: sportsKey,
              child: SizedBox(
                  height: 600,
                  child: Column(children: [
                    Text(
                      AppLocalizations.of(context)!.sports.toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    isDesktop
                        ? Divider(
                            color: Theme.of(context).colorScheme.primary,
                            thickness: 1,
                            indent: 64,
                            endIndent: 64,
                          )
                        : Divider(
                            color: Theme.of(context).colorScheme.primary,
                            thickness: 1,
                            indent: 32,
                            endIndent: 32,
                          ),
                    Text(localeService.currentLocale.languageCode),
                  ])),
            ),
            SliverToBoxAdapter(
              key: contactKey,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.contact.toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    isDesktop
                        ? Divider(
                            color: Theme.of(context).colorScheme.primary,
                            thickness: 1,
                            indent: 64,
                            endIndent: 64,
                          )
                        : Divider(
                            color: Theme.of(context).colorScheme.primary,
                            thickness: 1,
                            indent: 32,
                            endIndent: 32,
                          ),
                    isDesktop
                        ? Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () {
                                    _launchURL(
                                        'mailto:omerfaruk.kus@outlook.com');
                                  },
                                  icon: const Icon(Icons.email),
                                  label: const Text('Email'),
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 24.0, horizontal: 32.0),
                                    textStyle: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                const SizedBox(width: 24),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    _launchURL(
                                        'https://www.linkedin.com/in/omrfrkkus');
                                  },
                                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                                  label: const Text('LinkedIn'),
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 24.0, horizontal: 32.0),
                                    textStyle: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                const SizedBox(width: 24),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    _launchURL(
                                        'https://www.instagram.com/omrfrkkus');
                                  },
                                  icon:
                                      const FaIcon(FontAwesomeIcons.instagram),
                                  label: const Text('Instagram'),
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 24.0, horizontal: 32.0),
                                    textStyle: const TextStyle(fontSize: 18),
                                  ),
                                ),
                                const SizedBox(width: 24),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    _launchURL('https://github.com/omrfrkkus');
                                  },
                                  icon: const FaIcon(FontAwesomeIcons.github),
                                  label: const Text('GitHub'),
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 24.0, horizontal: 32.0),
                                    textStyle: const TextStyle(fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                          )
                        : ListView(
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(32.0),
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  _launchURL(
                                      'mailto:omerfaruk.kus@outlook.com');
                                },
                                icon: const Icon(Icons.email),
                                label: const Text('Email'),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 24.0),
                                  textStyle: const TextStyle(fontSize: 18),
                                ),
                              ),
                              const SizedBox(height: 16),
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
                                  textStyle: const TextStyle(fontSize: 18),
                                ),
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton.icon(
                                onPressed: () {
                                  _launchURL(
                                      'https://www.instagram.com/omrfrkkus');
                                },
                                icon: const FaIcon(FontAwesomeIcons.instagram),
                                label: const Text('Instagram'),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 24.0),
                                  textStyle: const TextStyle(fontSize: 18),
                                ),
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton.icon(
                                onPressed: () {
                                  _launchURL('https://github.com/omrfrkkus');
                                },
                                icon: const FaIcon(FontAwesomeIcons.github),
                                label: const Text('GitHub'),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 24.0),
                                  textStyle: const TextStyle(fontSize: 18),
                                ),
                              )
                            ],
                          )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 80,
                child: Center(
                  child: Text(
                    ' 2024 Ömer Faruk Kuş. ${AppLocalizations.of(context)!.all_rights}',
                    textAlign: TextAlign.center,
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
