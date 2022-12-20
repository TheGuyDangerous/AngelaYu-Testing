import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/components/constants.dart';
import '../components/card.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(
    'mailto:sannidhyadubey@gmail.com?subject=Flutterdev&body=Hi%20Sannidhya,');
final Uri _call = Uri.parse('tel:+91-7800662685');
final Uri _url2 = Uri.parse(
    'https://drive.google.com/file/d/1Qy5RKPJ7Ah8WsXTp2IRHEdoYlwi233Lp/view?usp=sharing');

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF512DA8),
      body: SafeArea(
        minimum:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.075),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Lottie.asset('assets/images/portfolio.json',
                  repeat: true, animate: true),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Textwidget(text: 'Sannidhya Dubey', fontstyle: FontStyle.italic),
            Textwidget(text: 'Flutter Developer', fontstyle: FontStyle.normal),
            const SizedBox(
              height: 20,
              width: 180,
              child: Divider(
                color: Color(0xFFD1C4E9),
              ),
            ),
            Cardwidget(
              cardicon: const Icon(Icons.phone),
              text: 'Call me',
              verheight: 20.0,
              horwidth: 25.0,
              onPressed: () => launch(_call.toString()),
            ),
            Cardwidget(
              cardicon: const Icon(Icons.email),
              text: 'Email me',
              verheight: 0.0,
              horwidth: 25.0,
              onPressed: () => launch(_url.toString()),
            ),
            SizedBox.fromSize(
              size: const Size.fromHeight(20.0),
            ),
            Cardwidget(
              cardicon: const Icon(Icons.person_pin),
              text: 'View Resume',
              verheight: 0.0,
              horwidth: 25.0,
              onPressed: () => launch(_url2.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
