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
    controller = AnimationController(duration: const Duration(milliseconds: 1200), vsync: this);

    titleOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.0,
      finish: 0.4,
    );

    titleOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.0,
      finish: 0.4,
    );

    fieldOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.3,
      finish: 0.6,
    );

    fieldOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.3,
      finish: 0.6,
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
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (oldSt, newSt) =>
          newSt is Nickname && oldSt.maybeMap(orElse: () => false, nickname: (st) => st.error != newSt.error),
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
                              autoFocus: true,
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
