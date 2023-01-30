import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:speed_code/moviePage/models/movie_model.dart';
import 'package:speed_code/moviePage/widgets/from_movie_card.dart';
import 'package:speed_code/moviePage/widgets/head_movie_card.dart';
import 'package:speed_code/theme/theme.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 24,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Movie',
                    style: whiteTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Watch much easier',
                    style: textStyle.copyWith(
                      color: const Color(
                        0xFF66667C,
                      ),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 55,
              height: 45,
              decoration: const BoxDecoration(
                color: Color(0xFF282A3E),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Image.asset(
                  'images/search_icon.png',
                  width: 22,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget movie() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            HeadMovieCard(),
            HeadMovieCard(
              name: 'Bohemian',
              category: 'Docomentary',
              ratings: 3,
              imageUrl: 'images/movie2.png',
            ),
            HeadMovieCard(
              name: 'Thor Love Thunder',
              category: 'Action',
              ratings: 5,
              imageUrl: 'images/movie3.png',
            ),
          ],
        ),
      );
    }

    Widget fromDisney() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Desney',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Column(
              children: mockMovie
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: FromMovieCard(
                        model: e,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF19182C),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              header(),
              const SizedBox(
                height: 28,
              ),
              movie(),
              const SizedBox(
                height: 28,
              ),
              fromDisney(),
            ],
          ),
        ),
      ),
    );
  }
}
