import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:speed_code/moviePage/models/movie_model.dart';
import 'package:speed_code/theme/theme.dart';

class FromMovieCard extends StatelessWidget {
  final MovieModel? model;
  const FromMovieCard({
    super.key,
    this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          model!.imageUrl!,
          width: 100,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model!.name!,
              style: whiteTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            Text(
              model!.category!,
              style: textStyle.copyWith(
                fontSize: 16,
                color: const Color(0xFF66667C),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmoothStarRating(
              rating: model!.rating!,
              starCount: 5,
              color: const Color(0xFFFFAB2E),
              allowHalfRating: false,
              size: 18,
              borderColor: greyColor,
            ),
          ],
        ),
      ],
    );
  }
}
