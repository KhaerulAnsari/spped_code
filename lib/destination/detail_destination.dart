import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:speed_code/destination/global_destination.dart';
import 'package:speed_code/destination/model/destination.dart';
import 'package:speed_code/theme/theme.dart';
import 'package:speed_code/widgets/custom_button.dart';
import 'package:unicons/unicons.dart';

class DetailDestinatio extends StatelessWidget {
  Destination? destination;
  DetailDestinatio({
    super.key,
    this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Hero(
          tag: destination!.imageUrl!,
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  destination!.imageUrl!,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    'images/destination/back_button.png',
                    width: 45,
                    height: 40,
                  ),
                ),
                const Spacer(),
                Text(
                  destination!.title!,
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      UniconsLine.map_marker,
                      color: buttonColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      destination!.location!,
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'Star From',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      NumberFormat.currency(
                        locale: 'id_ID',
                        decimalDigits: 0,
                        symbol: 'Rp ',
                      ).format(destination!.price).toString(),
                      style: textStyle.copyWith(
                        color: priceColor,
                        fontSize: 26,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: CustomButton(
                    bgColor: buttonColor,
                    title: 'Book Now',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
