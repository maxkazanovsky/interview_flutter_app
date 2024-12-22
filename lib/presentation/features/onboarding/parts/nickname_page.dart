part of '../onboadring.dart';

class NicknamePage extends StatefulWidget {
  const NicknamePage({super.key});

  @override
  State<NicknamePage> createState() => _NicknamePageState();
}

class _NicknamePageState extends State<NicknamePage> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Offset> titleOffsetAnimation;
  late final Animation<double> titleOpacityAnimation;
  late final Animation<Offset> fieldOffsetAnimation;
  late final Animation<double> fieldOpacityAnimation;

  @override
  void initState() {
    controller = AnimationController(duration: const Duration(milliseconds: 800), vsync: this);

    titleOffsetAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0,
          0.4,
          curve: Curves.linear,
        ),
      ),
    );
    titleOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.0,
        0.4,
        curve: Curves.linear,
      ),
    ));

    fieldOffsetAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.3,
          0.6,
          curve: Curves.linear,
        ),
      ),
    );
    fieldOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.3,
        0.6,
        curve: Curves.linear,
      ),
    ));

    controller.forward();
    super.initState();
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
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return state.maybeMap(
            orElse: () => SizedBox(),
            nickname: (state) => Padding(
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
                          context.l10n.nickname_headline,
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
                            position: titleOffsetAnimation,
                            child: Opacity(
                              opacity: titleOpacityAnimation.value,
                              child: child,
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (state.error != null) ...[
                              Text(
                                state.error!,
                                style: context.textStyles.bodySmall?.copyWith(color: AppColors.error),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                            BlurredInput(
                              width: double.infinity,
                              textAlign: TextAlign.left,
                              initialValue: state.nickname ?? '',
                              onChanged: (value) => context.read<OnboardingCubit>().setNickname(value, context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )));
      },
    );
  }
}
