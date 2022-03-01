import 'package:flutter/material.dart';
import 'package:flutter_news/search/components/background_wave_clipper.dart';
import 'package:flutter_news/search/components/search_bar.dart';

class BackgroundWave extends StatelessWidget {
  final double height;
  const BackgroundWave({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipPath(
        clipper: BackgroundWaveClipper(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFACCCC), Color(0xFFF6EFE9)],
            ),
          ),
        ),
      ),
    );
  }
}
