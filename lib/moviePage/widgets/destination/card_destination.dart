import 'package:flutter/material.dart';
import 'package:speed_code/destination/global_destination.dart';
import 'package:speed_code/destination/model/destination.dart';
import 'package:speed_code/theme/theme.dart';
import 'package:unicons/unicons.dart';

class CardDestination extends StatefulWidget {
  Destination? destination;
  CardDestination({super.key, this.destination});

  @override
  State<CardDestination> createState() => _CardDestinationState();
}

class _CardDestinationState extends State<CardDestination> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.destination!.imageUrl!,
      child: Container(
        width: 270,
        height: 350,
        padding: const EdgeInsets.all(
          10,
        ),
        decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(
              widget.destination!.imageUrl ??
                  'images/destination/destination1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: Image.asset(
                  !isSelected
                      ? 'images/destination/unselect_love.png'
                      : 'images/destination/select_button.png',
                  width: 50,
                ),
              ),
            ),
            const Spacer(),
            Text(
              widget.destination!.title ??
                  'Very beautiful river and surrounded by mountains.',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
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
                  widget.destination!.location ?? 'Khazastan',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
