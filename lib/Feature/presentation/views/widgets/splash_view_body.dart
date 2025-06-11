import 'package:booky_app/core/utils.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> bouncAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    bouncAnimation = Tween<double>(begin: -500, end: 0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.bounceOut),
    );

    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedBuilder(
            animation: bouncAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, bouncAnimation.value),
                child: Image.asset(
                  AssetsDate.logo,
                  height: MediaQuery.sizeOf(context).width * 0.5,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
