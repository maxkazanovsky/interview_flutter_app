part of '../onboadring.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(builder: (context, state) {
      return state.maybeWhen(
          orElse: () => SizedBox(),
          camera: (
            controller,
            _,
          ) {
            if (controller.value.isInitialized) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox.expand(child: camera.CameraPreview(controller)),
                  Positioned(
                    bottom: 36,
                    child: SafeArea(
                        child: GestureDetector(
                      onTap: () => context.read<OnboardingCubit>().nextPage(context),
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        width: 84,
                        height: 84,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.primary.withAlpha(40)),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primary,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(20),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.white.withAlpha(50),
                                spreadRadius: -2,
                                blurRadius: 5,
                                offset: Offset(-4, -4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                  )
                ],
              );
            }
            return Center(child: CircularProgressIndicator());
          });
    });
  }
}
