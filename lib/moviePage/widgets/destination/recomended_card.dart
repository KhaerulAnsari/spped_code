import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:speed_code/destination/global_destination.dart';
import 'package:speed_code/theme/theme.dart';
import 'package:unicons/unicons.dart';

class RecomendedCard extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? location;
  final double? rating;
  const RecomendedCard({
    super.key,
    this.imageUrl,
    this.title,
    this.location,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl ?? 'images/destination/destination6.png',
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? 'Beautiful townscape in Mostar.',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    UniconsLine.map_marker,
                    color: greyColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    location ?? 'Mostar, Bosnia',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothStarRating(
                starCount: 5,
                rating: rating ?? 4,
                color: starActivColor,
                borderColor: starNoActivColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
