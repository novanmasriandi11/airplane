import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/plane_get_started2.jpg',
                  ),
                  fit: BoxFit.fill,
                  colorFilter:
                      ColorFilter.mode(Colors.black, BlendMode.colorDodge)),
            ),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  "Fly Like a Bird",
                  style: blackTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Get Started',
                  width: 220,
                  margin: const EdgeInsets.only(
                    top: 350,
                    bottom: 10,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
