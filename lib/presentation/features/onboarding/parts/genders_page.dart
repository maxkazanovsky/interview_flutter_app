part of '../onboadring.dart';

class GendersPage extends StatefulWidget {
  const GendersPage({super.key});

  @override
  State<GendersPage> createState() => _GendersPageState();
}

class _GendersPageState extends State<GendersPage> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Offset> titleOffsetAnimation;
  late final Animation<double> titleOpacityAnimation;
  late final Animation<Offset> subtitleOffsetAnimation;
  late final Animation<double> subtitleOpacityAnimation;
  late final Animation<Offset> maleButtonOffsetAnimation;
  late final Animation<double> maleButtonOpacityAnimation;
  late final Animation<Offset> femaleButtonOffsetAnimation;
  late final Animation<double> femaleButtonOpacityAnimation;
  late final Animation<Offset> otherButtonOffsetAnimation;
  late final Animation<double> otherButtonOpacityAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 1200), vsync: this);

    titleOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.0,
      finish: 0.2,
    );

    titleOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.0,
      finish: 0.2,
    );

    subtitleOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.1,
      finish: 0.3,
    );

    subtitleOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.1,
      finish: 0.3,
    );

    maleButtonOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.4,
      finish: 0.6,
    );

    maleButtonOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.4,
      finish: 0.6,
    );

    femaleButtonOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.5,
      finish: 0.7,
    );

    femaleButtonOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.5,
      finish: 0.7,
    );

    otherButtonOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.6,
      finish: 0.8,
    );

    otherButtonOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.6,
      finish: 0.8,
    );

    controller.forward();
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
                  context.l10n.gender_headline,
                  style: context.textStyles.headlineSmall,
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
                  context.l10n.gender_subtitle,
                  style: context.textStyles.bodySmall,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  AnimatedBuilder(
                    animation: controller,
                    builder: (BuildContext context, Widget? child) {
                      return SlideTransition(
                        position: maleButtonOffsetAnimation,
                        child: Opacity(
                          opacity: maleButtonOpacityAnimation.value,
                          child: child,
                        ),
                      );
                    },
                    child: BlurredContainer(
                      width: double.infinity,
                      onTap: () => context.read<OnboardingCubit>().setGender(HumanGender.male, context),
                      child: Center(
                        child: Text(
                          context.l10n.gender_male,
                          style: context.textStyles.titleMedium,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  AnimatedBuilder(
                    animation: controller,
                    builder: (BuildContext context, Widget? child) {
                      return SlideTransition(
                        position: femaleButtonOffsetAnimation,
                        child: Opacity(
                          opacity: femaleButtonOpacityAnimation.value,
                          child: child,
                        ),
                      );
                    },
                    child: BlurredContainer(
                      width: double.infinity,
                      onTap: () => context.read<OnboardingCubit>().setGender(HumanGender.female, context),
                      child: Center(
                        child: Text(
                          context.l10n.gender_female,
                          style: context.textStyles.titleMedium,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  AnimatedBuilder(
                    animation: controller,
                    builder: (BuildContext context, Widget? child) {
                      return SlideTransition(
                        position: otherButtonOffsetAnimation,
                        child: Opacity(
                          opacity: otherButtonOpacityAnimation.value,
                          child: child,
                        ),
                      );
                    },
                    child: BlurredContainer(
                      width: double.infinity,
                      onTap: () => context.read<OnboardingCubit>().setGender(HumanGender.other, context),
                      child: Center(
                        child: Text(
                          context.l10n.gender_other,
                          style: context.textStyles.titleMedium,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
