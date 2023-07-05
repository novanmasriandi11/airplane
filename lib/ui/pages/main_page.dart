import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigationItem(
                imageUrl: 'assets/travel.png',
                isSelected: true,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/document_icon.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/wallet_icon.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/settings_icon.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whitebackgroundColor,
      body: Stack(
        children: [
          const Text('main page'),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
