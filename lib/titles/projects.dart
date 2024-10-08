import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:omerfarukkus_flutter_website/project_pages/adam.dart';
import 'package:omerfarukkus_flutter_website/project_pages/gorilla.dart';
import 'package:omerfarukkus_flutter_website/project_pages/johnny.dart';
import 'package:omerfarukkus_flutter_website/project_pages/pencil.dart';

class Projects extends StatelessWidget {
  Projects({
    super.key,
    required this.isDesktop,
  });

  final bool isDesktop;

  final List<Map<String, String>> projects = [
    {
      'title': 'Gorilla Workout Mobile App',
      'key': 'gorilla',
      'image': 'images/gorilla.png',
    },
    {
      'title': 'Adam the Humanoid',
      'key': 'adam',
      'image': 'images/adam0.png',
    },
    {
      'title': 'Johnny the Humanoid',
      'key': 'johnny',
      'image': 'images/johnny0.png',
    },
    {
      'title': 'Pencil 2D Platformer Game',
      'key': 'pencil',
      'image': 'images/pencil0.png',
    },
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
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
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
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
                    builder: (BuildContext context) => Dialog.fullscreen(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _getProjectWidget(project['title']!),
                          const SizedBox(height: 16),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Text(
                              AppLocalizations.of(context)!.project_description(
                                  project['key']!), // Correctly call the method
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 15),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 48),
                              child: Text(AppLocalizations.of(context)!.close),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context)!
                                  .project_description(project[
                                      'key']!) // Correctly call the method
                                  .replaceFirst(
                                      '{projects}',
                                      project[
                                          'key']!), // Call replaceFirst on the resulting string
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              AppLocalizations.of(context)!.click_more,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
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
    );
  }
}

Widget _getProjectWidget(String title) {
  switch (title) {
    case 'Gorilla Workout Mobile App':
      return const Gorilla(
        height: 500,
      );
    case 'Adam the Humanoid':
      return const Adam(
        height: 500,
      );
    case 'Johnny the Humanoid':
      return const Johnny(
        height: 500,
      );
    case 'Pencil 2D Platformer Game':
      return const Pencil(
        height: 400,
      );
    default:
      return const Gorilla(
        height: 500,
      ); // Varsayılan widget
  }
}
