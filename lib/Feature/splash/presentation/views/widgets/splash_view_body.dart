import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    initBouncingAnimation();

    navigateToHomeScreen();

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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Image.asset(
                    AssetsDate.logo,
                    height: MediaQuery.sizeOf(context).width * 0.5,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void initBouncingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    bouncAnimation = Tween<double>(begin: -500, end: 0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.bounceOut),
    );

    animationController.forward();
  }

  void navigateToHomeScreen() {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kHomePage);
    });
  }
}
