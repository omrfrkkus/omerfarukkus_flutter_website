import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omerfarukkus_flutter_website/services/locale_service.dart';
import 'package:omerfarukkus_flutter_website/titles/contact.dart';
import 'package:omerfarukkus_flutter_website/titles/projects.dart';
import 'package:omerfarukkus_flutter_website/titles/sports.dart';
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                _launchURL('https://github.com/omrfrkkus');
                              },
                              icon: const FaIcon(FontAwesomeIcons.github)),
                          IconButton(
                              onPressed: () {
                                _launchURL(
                                    'https://www.linkedin.com/in/omrfrkkus');
                              },
                              icon: const FaIcon(FontAwesomeIcons.linkedin)),
                          IconButton(
                              onPressed: () {
                                _launchURL('mailto:omerfaruk.kus@outlook.com');
                              },
                              icon: const FaIcon(FontAwesomeIcons.envelope)),
                          IconButton(
                              onPressed: () {
                                _launchURL(
                                    'https://www.instagram.com/omrfrkkus');
                              },
                              icon: const FaIcon(FontAwesomeIcons.instagram)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
                key: projectsKey, child: Projects(isDesktop: isDesktop)),
            SliverToBoxAdapter(
                key: sportsKey, child: Sports(isDesktop: isDesktop)),
            SliverToBoxAdapter(
                key: contactKey, child: Contact(isDesktop: isDesktop)),
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
