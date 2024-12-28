import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_birthday_app/core/routing/routes.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/generated/colors.gen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late Animation<Offset> headlineOffsetAnimation;
  late Animation<double> headlineOpacityAnimation;
  late Animation<Offset> subtitleOffsetAnimation;
  late Animation<double> subtitleOpacityAnimation;
  late Animation<Offset> buttonOffsetAnimation;
  late Animation<double> buttonOpacityAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    headlineOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.3, curve: Curves.linear),
      ),
    );
    headlineOpacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.3, curve: Curves.linear),
      ),
    );

    subtitleOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.3, 0.6, curve: Curves.linear),
      ),
    );
    subtitleOpacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.3, 0.6, curve: Curves.linear),
      ),
    );

    buttonOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.5, 0.9, curve: Curves.linear),
      ),
    );
    buttonOpacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.5, 0.9, curve: Curves.linear),
      ),
    );

    GoRouter.of(context).routerDelegate.addListener(_onRouteChange);

    controller.forward();
  }

  void _onRouteChange() {
    final currentLocation = GoRouter.of(context).state?.path;
    if (currentLocation == AppRoutes.welcome.path) {
      controller.reset();
      controller.forward();
    }
  }

  @override
  void dispose() {
    GoRouter.of(context).routerDelegate.removeListener(_onRouteChange);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: context.images.welcomeBackground.provider(), fit: BoxFit.fitHeight)),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: context.width,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
                child: SafeArea(
                  top: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnimatedBuilder(
                        animation: controller,
                        builder: (context, child) {
                          return SlideTransition(
                            position: headlineOffsetAnimation,
                            child: Opacity(
                              opacity: headlineOpacityAnimation.value,
                              child: child,
                            ),
                          );
                        },
                        child: Text(
                          key: UniqueKey(),
                          context.l10n.welcome_headline,
                          style: context.textStyles.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatedBuilder(
                          animation: controller,
                          builder: (BuildContext context, Widget? child) {
                            return SlideTransition(
                              position: subtitleOffsetAnimation,
                              child: Opacity(
                                opacity: subtitleOpacityAnimation.value,
                                child: child,
                              ),
                            );
                          },
                          child: Text(
                              key: UniqueKey(), context.l10n.welcome_subtitle, style: context.textStyles.bodySmall)),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget? child) {
                          return SlideTransition(
                            position: buttonOffsetAnimation,
                            child: Opacity(
                              opacity: buttonOpacityAnimation.value,
                              child: child,
                            ),
                          );
                        },
                        child: SizedBox(
                            child: ElevatedButton(
                                key: UniqueKey(),
                                onPressed: () async {
                                  controller.duration = const Duration(milliseconds: 500);
                                  await controller.reverse();
                                  if (mounted) {
                                    context.push(AppRoutes.onboarding.path);
                                  }
                                  controller.duration = const Duration(milliseconds: 1200);
                                },
                                child: Text(context.l10n.next))),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
