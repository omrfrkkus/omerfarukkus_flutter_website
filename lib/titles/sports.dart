import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Sports extends StatelessWidget {
  const Sports({
    super.key,
    required this.isDesktop,
  });

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
        const SizedBox(height: 24),
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: isDesktop
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 400,
                              maxHeight: 400,
                            ),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                'images/dip.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 400,
                              maxHeight: 400,
                            ), // Resmin maksimum genişliği
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                'images/flag.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              'images/dip.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              'images/flag.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
              ),
              Text(
                  'StreetLifting World Championship 2023\n2nd at Men -125kg Category'
                      .toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center),
            ],
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
