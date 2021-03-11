import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [Colors.black87, Colors.black12],
          begin: Alignment.bottomCenter,
          end: Alignment.center,
        ).createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
