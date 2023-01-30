import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:speed_code/theme/theme.dart';

class HeadMovieCard extends StatelessWidget {
  final String? name;
  final String? category;
  final double? ratings;
  final String? imageUrl;
  const HeadMovieCard({
    super.key,
    this.name,
    this.category,
    this.ratings,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 24,
      ),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl ?? 'images/movie1.png',
            width: 300,
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? 'John Wick 4',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      category ?? 'Action, Crime',
                      style: textStyle.copyWith(
                        color: const Color(
                          0xFF66667C,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SmoothStarRating(
                rating: ratings ?? 5,
                allowHalfRating: false,
                starCount: 5,
                color: const Color(0xFFFFAB2E),
                size: 18,
                borderColor: greyColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
