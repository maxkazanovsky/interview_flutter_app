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

    // Create fields animations
    fieldsOffsetAnimation = createAnimation(
      controller,
      begin: Offset(0.2, 0),
      end: Offset.zero,
      start: 0.3,
      finish: 0.6,
    );
    fieldsOpacityAnimation = createAnimation(
      controller,
      begin: 0.0,
      end: 1.0,
      start: 0.3,
      finish: 0.6,
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
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (oldSt, newSt) =>
          newSt is Birthday && oldSt.maybeMap(orElse: () => false, birthday: (st) => st.error != newSt.error),
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
                                buildInputField(
                                  width: 74,
                                  autoFocus: true,
                                  initialValue: state.day?.toString() ?? '',
                                  onChanged: (value) => context.read<OnboardingCubit>().setBirthdayDay(value, context),
                                  label: context.l10n.birthday_day,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                buildInputField(
                                  width: 74,
                                  initialValue: state.month?.toString() ?? '',
                                  onChanged: (value) =>
                                      context.read<OnboardingCubit>().setBirthdayMonth(value, context),
                                  label: context.l10n.birthday_month,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                buildInputField(
                                  width: 103,
                                  initialValue: state.year?.toString() ?? '',
                                  onChanged: (value) => context.read<OnboardingCubit>().setBirthdayYear(value, context),
                                  label: context.l10n.birthday_year,
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

  Widget buildInputField({
    required double width,
    required String initialValue,
    required void Function(String) onChanged,
    required String label,
    bool autoFocus = false,
  }) {
    return Column(
      children: [
        BlurredInput(
          width: width,
          keyboardType: TextInputType.number,
          inputAction: TextInputAction.next,
          initialValue: initialValue,
          autoFocus: autoFocus,
          onChanged: onChanged,
        ),
        const SizedBox(height: 8),
        Text(label, style: context.textStyles.bodyMedium),
      ],
    );
  }
}
