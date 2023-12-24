import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart' as svg;
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:glass_kit/glass_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Intro.jpg'),
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Text(
              'NFT',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          )
              .animate()
              .scale(
                duration: const Duration(milliseconds: 600),
              )
              .then()
              .fadeIn(curve: Curves.ease),
          Positioned(
            top: 90,
            right: 110,
            child: Text(
              'TM',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
              .animate()
              .scale(
                duration: const Duration(milliseconds: 600),
              )
              .then()
              .fadeIn(curve: Curves.ease),
          Positioned(
            top: 190,
            child: svg.SvgPicture.asset(
              'assets/images/nike.svg',
              width: 55,
            ),
          )
              .animate()
              .scale(
                duration: const Duration(milliseconds: 600),
              )
              .then()
              .fadeIn(curve: Curves.ease),
          Positioned(
            bottom: 250,
            left: 0,
            child: Text(
              '''
          EXPLORE
          ART OF THE
          FUTURE
                ''',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
              .animate()
              .scale(
                duration: const Duration(milliseconds: 600),
              )
              .then()
              .fadeIn(curve: Curves.ease),
          Positioned(
            bottom: 80,
            child: GlassContainer.clearGlass(
              blur: 15,
              color: const Color(0xff0D0D0D).withOpacity(0.3),
              borderWidth: 0,
              width: 230,
              height: 45,
              borderRadius: BorderRadius.circular(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: const BorderSide(width: 0),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  // surfaceTintColor: Colors.green,
                ),
                onPressed: () {},
                child: Text(
                  'START',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            )
                .animate()
                .slideY(
                  curve: Curves.ease,
                  begin: 3,
                  delay: const Duration(milliseconds: 400),
                )
                .then()
                .shimmer(
                  delay: const Duration(
                    milliseconds: 300,
                  ),
                  duration: const Duration(
                    seconds: 1,
                  ),
                ),
          )
        ],
      ),
    );
  }
}