import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_code/destination/detail_destination.dart';
import 'package:speed_code/destination/model/destination.dart';
import 'package:speed_code/moviePage/widgets/destination/card_destination.dart';
import 'package:speed_code/moviePage/widgets/destination/recomended_card.dart';
import 'package:speed_code/theme/theme.dart';
import 'package:unicons/unicons.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alexi Magrider',
                    style: blackTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: semiBold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        UniconsLine.map_marker,
                        color: greyColor,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Newyork City',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 70,
              height: 70,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: blackColor,
                ),
              ),
              child: Image.asset(
                'images/destination/profile.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
    }

    Widget formSearch() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 7,
          vertical: 8,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFF1F0F5),
        ),
        child: Row(
          children: [
            Icon(
              UniconsLine.search,
              color: greyColor,
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: TextField(
                style: blackTextStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Destination...',
                  hintStyle: greyTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget destinationText() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Text(
          'Top Destination',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget listDestination() {
      return SizedBox(
        height: 350,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: mockDestination
              .map((e) => Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          DetailDestinatio(
                            destination: e,
                          ),
                        );
                      },
                      child: CardDestination(
                        destination: e,
                      ),
                    ),
                  ))
              .toList(),
        ),
      );
    }

    Widget recomendedDestination() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recomended Destionation',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const RecomendedCard(),
            const SizedBox(
              height: 15,
            ),
            const RecomendedCard(
              imageUrl: 'images/destination/destination7.png',
              title: 'Awesome hut cottage in Maldives beach.',
              location: 'Alif Alif Atoll, Maldives',
              rating: 3,
            ),
            const SizedBox(
              height: 15,
            ),
            const RecomendedCard(
              imageUrl: 'images/destination/destination8.png',
              title: 'Situ gunung suspension',
              location: 'Alif Alif Atoll, Maldives',
              rating: 5,
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              header(),
              const SizedBox(
                height: 25,
              ),
              formSearch(),
              const SizedBox(
                height: 25,
              ),
              destinationText(),
              const SizedBox(
                height: 10,
              ),
              listDestination(),
              const SizedBox(
                height: 20,
              ),
              recomendedDestination(),
            ],
          ),
        ),
      ),
    );
  }
}
