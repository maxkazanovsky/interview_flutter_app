part of '../onboadring.dart';

class CameraPreviewPage extends StatefulWidget {
  const CameraPreviewPage({super.key});

  @override
  State<CameraPreviewPage> createState() => _CameraPreviewPageState();
}

class _CameraPreviewPageState extends State<CameraPreviewPage> {
  BannerAd? _bannerAd;

  void _loadAd() {
    final bannerAd = BannerAd(
      size: AdSize.largeBanner,
      adUnitId: "ca-app-pub-3940256099942544/6300978111",
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('BannerAd failed to load: $error');
          ad.dispose();
        },
      ),
    );

    bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => SizedBox(),
          cameraPreview: _buildContent,
        );
      },
    );
  }

  Widget _buildContent(CameraPreview state) {
    if (state.showAd) {
      _loadAd();
    }

    return SizedBox.expand(
      child: Stack(
        children: [
          SizedBox.expand(
            child: Image.file(
              File(state.image.path),
              fit: BoxFit.cover,
            ),
          ),
          if (state.showAd)
            Positioned(
                bottom: 0,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: context.read<OnboardingCubit>().closeAdvertisement,
                          child: context.icons.adClose.image(),
                        )
                      ],
                    ),
                    Container(
                      width: context.width,
                      height: 92,
                      decoration: BoxDecoration(
                          color: AppColors.black, border: Border(top: BorderSide(width: 2, color: AppColors.error))),
                      child: _bannerAd != null ? AdWidget(ad: _bannerAd!) : null,
                    )
                  ],
                ))
        ],
      ),
    );
  }
}
