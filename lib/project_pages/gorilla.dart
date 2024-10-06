import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Gorilla extends StatelessWidget {
  const Gorilla({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: List.generate(5, (index) {
              return Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('images/pixel$index.png'),
              );
            }),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () => _launchURL(
              'https://play.google.com/store/apps/details?id=com.koznotech.gorillaworkout&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'),
          child: Image.asset('images/play.png'),
        )
      ],
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
