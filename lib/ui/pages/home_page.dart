import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,\nNovan Manday',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile_image.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                  name: 'Matkustus',
                  city: 'Belgium',
                  imageUrl: 'assets/image_destination_2.png',
                  rating: 4.5),
              DestinationCard(
                  name: 'Wandkraft',
                  city: 'Morocco',
                  imageUrl: 'assets/image_destination_3.png',
                  rating: 4.0),
              DestinationCard(
                  name: 'Taj Mahal',
                  city: 'India',
                  imageUrl: 'assets/image_destination_4.png',
                  rating: 4.9),
              DestinationCard(
                  name: 'Tokyo',
                  city: 'Japan',
                  imageUrl: 'assets/image_destination_5.png',
                  rating: 5.0),
              DestinationCard(
                  name: 'Venice Canals',
                  city: 'Italia',
                  imageUrl: 'assets/image_destination_6.png',
                  rating: 4.2),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              name: 'Dubrovnik West Harbour',
              city: 'Croatia',
              imageUrl: 'assets/image_destination_7.png',
              rating: 4.0,
            ),
            const DestinationTile(
              name: 'Tokyo Tower',
              city: 'Japan',
              imageUrl: 'assets/image_destination_8.png',
              rating: 4.8,
            ),
            const DestinationTile(
              name: 'Senbon Torii',
              city: 'Japan',
              imageUrl: 'assets/image_destination_9.png',
              rating: 4.8,
            ),
            const DestinationTile(
              name: 'Iguazu Falls',
              city: 'Brazil',
              imageUrl: 'assets/image_destination_10.png',
              rating: 4.9,
            ),
            const DestinationTile(
              name: 'Plönlein',
              city: 'Germany',
              imageUrl: 'assets/image_destination_11.png',
              rating: 4.3,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
