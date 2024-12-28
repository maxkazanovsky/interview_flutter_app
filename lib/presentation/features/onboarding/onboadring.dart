import 'dart:io';

import 'package:camera/camera.dart' as camera;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:test_birthday_app/core/routing/routes.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/generated/colors.gen.dart';
import 'package:test_birthday_app/presentation/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:test_birthday_app/presentation/widgets/blurred_container.dart';
import 'package:test_birthday_app/presentation/widgets/blurred_input.dart';
import 'package:test_birthday_app/presentation/widgets/error_container.dart';

part 'parts/birthday_page.dart';
part 'parts/camera_page.dart';
part 'parts/camera_preview_page.dart';
part 'parts/genders_page.dart';
part 'parts/nickname_page.dart';
part 'parts/photo_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late final ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController(initialScrollOffset: 0);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OnboardingCubit>().init();
    });
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(context.images.backgroundOnboarding.provider(), context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: _buildFloatButton(),
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Stack(
          children: [
            Positioned.fill(
              top: 0,
              left: 0,
              child: SingleChildScrollView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                child: Container(
                  width: 850,
                  height: context.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: context.images.backgroundOnboarding.provider(), fit: BoxFit.fitHeight)),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.gradientBright.withValues(alpha: 0.75),
                      AppColors.gradientDark.withValues(alpha: 0.75),
                      AppColors.gradientDark.withValues(alpha: 0.75),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: BlocConsumer<OnboardingCubit, OnboardingState>(
                listener: (BuildContext context, OnboardingState state) {
                  state.maybeMap(
                      birthday: (_) =>
                          _controller.animateTo(0, duration: const Duration(milliseconds: 300), curve: Curves.linear),
                      nickname: (_) {
                        // I do not have enough time to make it more dynamic
                        final onePart = _controller.position.maxScrollExtent / 4;
                        _controller.animateTo(onePart,
                            duration: const Duration(milliseconds: 300), curve: Curves.linear);
                      },
                      gender: (_) {
                        // I do not have enough time to make it more dynamic
                        final onePart = (_controller.position.maxScrollExtent / 4) * 2;
                        _controller.animateTo(onePart,
                            duration: const Duration(milliseconds: 300), curve: Curves.linear);
                      },
                      photo: (_) {
                        _controller.animateTo(_controller.position.maxScrollExtent,
                            duration: const Duration(milliseconds: 300), curve: Curves.linear);
                      },
                      orElse: () {
                        _controller.jumpTo(_controller.position.maxScrollExtent);
                      });
                },
                builder: (context, state) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned.fill(child: _getPageForState(state)),
                      Positioned.fill(child: _buildHeader(state)),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPageForState(OnboardingState state) {
    return Column(
      children: [
        Expanded(
          child: state.map(
            loading: (_) => Center(child: CircularProgressIndicator()),
            birthday: (_) => SafeArea(child: BirthdayPage(key: ValueKey("birthday_page"))),
            nickname: (_) => SafeArea(child: NicknamePage(key: ValueKey("nickname_page"))),
            gender: (_) => SafeArea(child: GendersPage(key: ValueKey("gender_page"))),
            photo: (_) => SafeArea(child: PhotoPage(key: ValueKey("photo_page"))),
            camera: (_) => CameraPage(key: ValueKey("camera_page")),
            cameraPreview: (_) => CameraPreviewPage(key: ValueKey("camera_preview_page")),
          ),
        ),
        AnimatedContainer(
          height: MediaQuery.of(context).viewInsets.bottom,
          duration: const Duration(milliseconds: 100),
        )
      ],
    );
  }

  Widget _buildHeader(OnboardingState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                state.maybeMap(
                  birthday: (_) => GestureDetector(
                    onTap: () => context.read<OnboardingCubit>().previousPage(context),
                    child: context.icons.close.image(color: AppColors.iconColor),
                  ),
                  orElse: () => state.isPreviousButtonAvailable
                      ? GestureDetector(
                          onTap: () => context.read<OnboardingCubit>().previousPage(context),
                          child: context.icons.backArrow.image(color: AppColors.iconColor),
                        )
                      : SizedBox(),
                ),
                state.maybeMap(
                  cameraPreview: (_) => IconButton(
                      onPressed: () => context
                          .push(AppRoutes.settings.path)
                          .then((value) => context.read<OnboardingCubit>().setAppUnlocked(value as bool)),
                      icon: context.icons.settings.image(color: AppColors.iconColor)),
                  camera: (_) => context.read<OnboardingCubit>().isFlipCameraAvailable &&
                          state.maybeMap(orElse: () => false, camera: (state) => !state.hasError)
                      ? IconButton(
                          onPressed: context.read<OnboardingCubit>().flipCamera,
                          icon: context.icons.refresh.image(color: AppColors.iconColor))
                      : SizedBox(),
                  loading: (_) => SizedBox(),
                  orElse: () => CircularPercentIndicator(
                    animation: true,
                    animationDuration: 500,
                    animateFromLastPercent: true,
                    addAutomaticKeepAlive: true,
                    radius: 22,
                    lineWidth: 1,
                    percent: _progress(),
                    center: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: (_progress() * 100)),
                      duration: const Duration(milliseconds: 500),
                      builder: (BuildContext context, double value, Widget? child) {
                        return Text(
                          "${value.toInt()}%",
                          style: context.textStyles.labelSmall,
                        );
                      },
                    ),
                    progressColor: AppColors.primary,
                    backgroundColor: AppColors.secondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double _progress() {
    final state = context.read<OnboardingCubit>().state;
    if (state is Birthday) return 0.25;
    if (state is Nickname) return 0.50;
    if (state is Gender) return 0.75;
    if (state is Photo) return 1.0;
    return 0.0;
  }

  Widget _buildFloatButton() {
    return BlocBuilder<OnboardingCubit, OnboardingState>(builder: (context, globalState) {
      return globalState.maybeMap(
          birthday: (state) => AnimatedContainer(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                duration: Duration(milliseconds: 200),
                child: IconButton(
                    disabledColor: AppColors.primary.withAlpha(40),
                    onPressed: () => context.read<OnboardingCubit>().nextPage(context),
                    icon: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                      child: context.svg.arrowRight.svg(),
                    )),
              ),
          nickname: (_) => AnimatedContainer(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                duration: Duration(milliseconds: 200),
                child: IconButton(
                    disabledColor: AppColors.primary.withAlpha(40),
                    onPressed: () => context.read<OnboardingCubit>().nextPage(context),
                    icon: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                      child: context.svg.arrowRight.svg(),
                    )),
              ),
          orElse: () => SizedBox.shrink());
    });
  }
}
