import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omerfarukkus_flutter_website/services/launch_url_service.dart';

class Contact extends StatelessWidget {
  const Contact({super.key, required this.isDesktop});
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                          UrlLauncherService.launchURL(
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
                          UrlLauncherService.launchURL(
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
                          UrlLauncherService.launchURL(
                              'https://github.com/omrfrkkus');
                        },
                        icon: const FaIcon(FontAwesomeIcons.github),
                        label: const Text('GitHub'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24.0, horizontal: 32.0),
                          textStyle: const TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(width: 24),
                      ElevatedButton.icon(
                        onPressed: () {
                          UrlLauncherService.launchURL(
                              'https://www.instagram.com/omrfrkkus');
                        },
                        icon: const FaIcon(FontAwesomeIcons.instagram),
                        label: const Text('Instagram'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24.0, horizontal: 32.0),
                          textStyle: const TextStyle(fontSize: 18),
                        ),
                      ),
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
                        UrlLauncherService.launchURL(
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
                        UrlLauncherService.launchURL(
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
                        UrlLauncherService.launchURL(
                            'https://github.com/omrfrkkus');
                      },
                      icon: const FaIcon(FontAwesomeIcons.github),
                      label: const Text('GitHub'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 24.0),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      onPressed: () {
                        UrlLauncherService.launchURL(
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
                  ],
                )
        ],
      ),
    );
  }
}
