part of '../onboadring.dart';

class BirthdayPage extends StatefulWidget {
  const BirthdayPage({super.key});

  @override
  State<BirthdayPage> createState() => BirthdayPageState();
}

class BirthdayPageState extends State<BirthdayPage> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Offset> titleOffsetAnimation;
  late final Animation<double> titleOpacityAnimation;
  late final Animation<Offset> fieldsOffsetAnimation;
  late final Animation<double> fieldsOpacityAnimation;

  @override
  void initState() {
    super.initState();
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

    fieldsOffsetAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.3,
          0.6,
          curve: Curves.linear,
        ),
      ),
    );
    fieldsOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.3,
        0.6,
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
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (BuildContext context, OnboardingState state) {
        return state.maybeMap(
            orElse: () => SizedBox(),
            birthday: (state) => Padding(
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
                          context.l10n.birthday_headline,
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
                            position: fieldsOffsetAnimation,
                            child: Opacity(
                              opacity: fieldsOpacityAnimation.value,
                              child: child,
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (state.error != null) ...[
                              Text(
                                key: ObjectKey(state.error),
                                state.error!,
                                style: context.textStyles.bodySmall?.copyWith(color: AppColors.error),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                            Row(
                              children: [
                                Column(
                                  children: [
                                    BlurredInput(
                                      width: 74,
                                      keyboardType: TextInputType.number,
                                      inputAction: TextInputAction.next,
                                      initialValue: state.day?.toString() ?? '',
                                      onChanged: (value) =>
                                          context.read<OnboardingCubit>().setBirthdayDay(value, context),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      context.l10n.birthday_day,
                                      style: context.textStyles.bodyMedium,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  children: [
                                    BlurredInput(
                                      width: 74,
                                      keyboardType: TextInputType.number,
                                      inputAction: TextInputAction.next,
                                      initialValue: state.month?.toString() ?? '',
                                      onChanged: (value) =>
                                          context.read<OnboardingCubit>().setBirthdayMonth(value, context),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      context.l10n.birthday_month,
                                      style: context.textStyles.bodyMedium,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  children: [
                                    BlurredInput(
                                      width: 103,
                                      keyboardType: TextInputType.number,
                                      inputAction: TextInputAction.done,
                                      initialValue: state.year?.toString() ?? '',
                                      onChanged: (value) =>
                                          context.read<OnboardingCubit>().setBirthdayYear(value, context),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      context.l10n.birthday_year,
                                      style: context.textStyles.bodyMedium,
                                    )
                                  ],
                                ),
                              ],
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
