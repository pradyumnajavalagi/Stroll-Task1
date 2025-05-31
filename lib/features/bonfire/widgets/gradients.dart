import 'package:flutter/material.dart';

class GradientThree extends StatelessWidget {
  const GradientThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(0, 0, 0, 0.4), // 0%
              Color.fromRGBO(0, 0, 0, 0.123), // ~14%
              Color.fromRGBO(0, 0, 0, 0.0), // ~23.4%
            ],
            stops: [0.0, 0.14, 0.234],
          ),
        ),
      ),
    );
  }
}

class GradientTwo extends StatelessWidget {
  const GradientTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(
                0.0013, -0.6256), // Convert 50.13% x and 18.72% y
            radius: 0.75,
            colors: [
              Color.fromRGBO(0, 0, 0, 0.045),
              Color.fromRGBO(0, 0, 0, 0.107),
              Color.fromRGBO(0, 0, 0, 0.135),
              Color.fromRGBO(0, 0, 0, 0.195),
              Color.fromRGBO(0, 0, 0, 0.24),
            ],
            stops: [0.0, 0.6328, 0.7566, 0.8844, 1.0],
          ),
        ),
      ),
    );
  }
}

class GradientOne extends StatelessWidget {
  const GradientOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(15, 17, 21, 0.0), // ~44%
              Color.fromRGBO(13, 14, 18, 0.28), // ~49%
              Color.fromRGBO(11, 12, 15, 0.64), // ~52.5%
              Color.fromRGBO(9, 11, 13, 0.8), // ~55%
              Colors.black, // ~57%
            ],
            stops: [0.44, 0.49, 0.525, 0.551, 0.569],
          ),
        ),
      ),
    );
  }
}