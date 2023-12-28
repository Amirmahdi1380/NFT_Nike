import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

Widget createCustomGlassContainer({
  required BuildContext context,
  required String text,
  double height = 40,
  double width = 89,
  double borderWidth = 0,
  double blur = 2,
  Gradient? gradient,
  double elevation = 0,
  BorderRadius? borderRadius,
}) {
  return GlassContainer.clearGlass(
    height: height,
    width: width,
    borderWidth: borderWidth,
    blur: blur,
    gradient: gradient ??
        LinearGradient(
          colors: [
            Colors.grey.withOpacity(0.1),
            Colors.black12.withOpacity(0.3),
          ],
        ),
    elevation: elevation,
    borderRadius: borderRadius ?? BorderRadius.circular(20),
    child: Center(
      child: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    ),
  );
}
