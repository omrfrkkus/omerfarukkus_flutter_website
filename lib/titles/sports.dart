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
    return SizedBox(
      height: 550,
      child: Column(
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
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: isDesktop
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('images/dip.png',
                                    width: 350, height: 350)),
                            Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset('images/flag.png',
                                    height: 350)),
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
                                )),
                            Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset(
                                  'images/flag.png',
                                )),
                          ],
                        ),
                ),
                Text(
                    'StreetLifting World Championship 2023\n2nd at Men -125kg Category',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
