import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

Widget createCustomCard({
  required BuildContext context,
  required String title1,
  required String time,
  required String title2,
  required String title3,
  required String title4,
  required String imagePath,
  required String heroTag,
  required double width,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Stack(
      children: [
        Hero(
          tag: heroTag,
          child: Image.asset(
            imagePath,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: GlassContainer.clearGlass(
            height: 25,
            width: 80,
            borderWidth: 0,
            borderColor: Colors.transparent,
            color: Colors.black12,
            elevation: 0,
            borderRadius: BorderRadius.circular(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.timelapse,
                  color: Colors.white,
                  size: 18,
                ),
                Text(
                  time,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            child: GlassContainer.clearGlass(
              height: 65,
              width: width,
              color: Colors.black12,
              borderColor: Colors.transparent,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              blur: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title1,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              title2,
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title3,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              title4,
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}
