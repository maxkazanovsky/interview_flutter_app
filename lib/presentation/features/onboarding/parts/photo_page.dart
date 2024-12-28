part of '../onboadring.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Offset> titleOffsetAnimation;
  late final Animation<double> titleOpacityAnimation;
  late final Animation<Offset> buttonOffsetAnimation;
  late final Animation<double> buttonOpacityAnimation;
  late final Animation<Offset> requirementsOffsetAnimation;
  late final Animation<double> requirementsOpacityAnimation;
  late final Animation<Offset> requirementsTitleOffsetAnimation;
  late final Animation<double> requirementsTitleOpacityAnimation;
  late final Animation<Offset> requirementsOptionFaceOffsetAnimation;
  late final Animation<double> requirementsOptionFaceOpacityAnimation;
  late final Animation<Offset> requirementsOptionFakeOffsetAnimation;
  late final Animation<double> requirementsOptionFakeOpacityAnimation;
  late final Animation<Offset> requirementsOptionYourselfOffsetAnimation;
  late final Animation<double> requirementsOptionYourselfOpacityAnimation;

  @override
  void initState() {
    controller = AnimationController(duration: const Duration(milliseconds: 1200), vsync: this);

    titleOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.0,
      finish: 0.1,
    );
    titleOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.0,
      finish: 0.1,
    );

    buttonOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.1,
      finish: 0.2,
    );

    buttonOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.1,
      finish: 0.2,
    );

    requirementsOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.2,
      finish: 0.4,
    );

    requirementsOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.2,
      finish: 0.4,
    );

    requirementsTitleOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.4,
      finish: 0.5,
    );

    requirementsTitleOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.4,
      finish: 0.5,
    );

    requirementsOptionFaceOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.5,
      finish: 0.6,
    );

    requirementsOptionFaceOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.5,
      finish: 0.6,
    );

    requirementsOptionFakeOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.6,
      finish: 0.7,
    );

    requirementsOptionFakeOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.6,
      finish: 0.7,
    );

    requirementsOptionYourselfOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.7,
      finish: 0.8,
    );
    requirementsOptionYourselfOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.7,
      finish: 0.8,
    );

    controller.forward();

    super.initState();
  }

  Animation<T> createAnimation<T>(
    AnimationController controller, {
    required T begin,
    required T end,
    required double start,
    required double finish,
    Curve curve = Curves.easeInOut,
  }) {
    return Tween<T>(begin: begin, end: end).animate(
      CurvedAnimation(parent: controller, curve: Interval(start, finish, curve: curve)),
    );
  }

  @override
  void dispose() {
    if (controller.isAnimating) {
      controller.stop();
    }
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 90,
            ),
            AnimatedBuilder(
              animation: controller,
              builder: (BuildContext context, Widget? child) {
                return SlideTransition(
                  position: titleOffsetAnimation,
                  child: Opacity(
                    opacity: titleOpacityAnimation.value,
                    child: child,
                  ),
                );
              },
              child: Text(
                context.l10n.photo_headline,
                style: context.textStyles.headlineSmall,
              ),
            ),
            const SizedBox(
              height: 25,
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
              child: ElevatedButton(
                  onPressed: () => context.read<OnboardingCubit>().nextPage(context),
                  child: Text(context.l10n.photo_button_text)),
            ),
            const SizedBox(
              height: 35,
            ),
            AnimatedBuilder(
              animation: controller,
              builder: (BuildContext context, Widget? child) {
                return SlideTransition(
                  position: requirementsOffsetAnimation,
                  child: Opacity(
                    opacity: requirementsOpacityAnimation.value,
                    child: child,
                  ),
                );
              },
              child: BlurredContainer(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget? child) {
                          return SlideTransition(
                            position: requirementsTitleOffsetAnimation,
                            child: Opacity(
                              opacity: requirementsTitleOpacityAnimation.value,
                              child: child,
                            ),
                          );
                        },
                        child: Text(
                          context.l10n.photo_requirements_headline,
                          style: context.textStyles.titleSmall,
                        ),
                      ),
                      const SizedBox(height: 16),
                      AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget? child) {
                          return SlideTransition(
                            position: requirementsOptionFaceOffsetAnimation,
                            child: Opacity(
                              opacity: requirementsOptionFaceOpacityAnimation.value,
                              child: child,
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            context.svg.check.svg(),
                            const SizedBox(width: 8),
                            Text(
                              context.l10n.photo_requirement_face,
                              style: context.textStyles.labelMedium,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget? child) {
                          return SlideTransition(
                            position: requirementsOptionFakeOffsetAnimation,
                            child: Opacity(
                              opacity: requirementsOptionFakeOpacityAnimation.value,
                              child: child,
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            context.svg.check.svg(),
                            const SizedBox(width: 8),
                            Text(
                              context.l10n.photo_requirement_fake,
                              style: context.textStyles.labelMedium,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, Widget? child) {
                          return SlideTransition(
                            position: requirementsOptionYourselfOffsetAnimation,
                            child: Opacity(
                              opacity: requirementsOptionYourselfOpacityAnimation.value,
                              child: child,
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            context.svg.check.svg(),
                            const SizedBox(width: 8),
                            Text(
                              context.l10n.photo_requirement_yourself,
                              style: context.textStyles.labelMedium,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
