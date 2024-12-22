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
    controller = AnimationController(duration: const Duration(milliseconds: 800), vsync: this);

    titleOffsetAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0,
          0.2,
          curve: Curves.linear,
        ),
      ),
    );
    titleOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.linear,
      ),
    ));

    subtitleOffsetAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.1,
          0.3,
          curve: Curves.linear,
        ),
      ),
    );
    subtitleOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.1,
        0.3,
        curve: Curves.linear,
      ),
    ));

    maleButtonOffsetAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.4,
          0.6,
          curve: Curves.linear,
        ),
      ),
    );
    maleButtonOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.4,
        0.6,
        curve: Curves.linear,
      ),
    ));

    femaleButtonOffsetAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.5,
          0.7,
          curve: Curves.linear,
        ),
      ),
    );
    femaleButtonOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.5,
        0.7,
        curve: Curves.linear,
      ),
    ));

    otherButtonOffsetAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.6,
          0.8,
          curve: Curves.linear,
        ),
      ),
    );
    otherButtonOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.6,
        0.8,
        curve: Curves.linear,
      ),
    ));

    controller.forward();
  }

  @override
  void dispose() async {
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
