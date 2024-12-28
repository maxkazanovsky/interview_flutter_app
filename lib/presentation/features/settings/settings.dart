import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/generated/colors.gen.dart';
import 'package:test_birthday_app/presentation/features/settings/cubit/settings_cubit.dart';
import 'package:test_birthday_app/presentation/widgets/error_container.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void initState() {
    super.initState();
    context.read<SettingsCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 24),
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return state.map(
                loading: (_) => Center(
                      child: CircularProgressIndicator(),
                    ),
                loaded: (state) => Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () => context.pop(state.isAppUnlocked),
                                icon: context.icons.backArrow.image(color: AppColors.iconColor)),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        _listTile(title: context.l10n.settings, listTiles: [
                          if (!state.isAppUnlocked)
                            _ListTile(
                              onClick: () => context.read<SettingsCubit>().unlockTheApp(context),
                              title: context.l10n.unlock_app,
                            ),
                          _ListTile(
                            onClick: context.read<SettingsCubit>().rateUs,
                            title: context.l10n.rate_us,
                          ),
                        ]),
                        const SizedBox(
                          height: 24,
                        ),
                        _listTile(title: context.l10n.account, listTiles: [
                          _ListTile(
                            onClick: null,
                            title: context.l10n.username,
                            value: state.userData.nickname,
                          ),
                          _ListTile(
                            onClick: null,
                            title: context.l10n.birthday,
                            value: state.userData.birthday.presentationString(),
                          ),
                          _ListTile(
                            onClick: null,
                            title: context.l10n.gender,
                            value: state.userData.gender.name,
                          ),
                        ])
                      ],
                    ),
                error: (_) {
                  return ErrorContainer(
                    onRetry: () {
                      context.read<SettingsCubit>().init();
                    },
                    errorText: context.l10n.error_user_data,
                  );
                });
          },
        ),
      ),
    );
  }

  Widget _listTile({required String title, required List<_ListTile> listTiles}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textStyles.labelSmall,
        ),
        const SizedBox(height: 8),
        Column(
          children: List.generate(listTiles.length, (index) {
            final borderRadius = BorderRadius.only(
              topRight: index == 0 ? Radius.circular(15) : Radius.zero,
              topLeft: index == 0 ? Radius.circular(15) : Radius.zero,
              bottomLeft: index == listTiles.length - 1 ? Radius.circular(15) : Radius.zero,
              bottomRight: index == listTiles.length - 1 ? Radius.circular(15) : Radius.zero,
            );
            return Material(
              child: InkWell(
                borderRadius: borderRadius,
                onTap: listTiles[index].onClick,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    color: AppColors.surface.withAlpha(85),
                    borderRadius: borderRadius,
                    border: Border(
                        bottom: index != listTiles.length - 1 ? BorderSide(color: AppColors.border) : BorderSide.none),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        listTiles[index].title,
                        style: context.textStyles.bodyLarge,
                      ),
                      if (listTiles[index].value != null)
                        Text(
                          listTiles[index].value!,
                          style: context.textStyles.labelLarge,
                        ),
                    ],
                  ),
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}

class _ListTile {
  final VoidCallback? onClick;
  final String title;
  final String? value;

  _ListTile({required this.onClick, required this.title, this.value});
}

extension on DateTime {
  String presentationString() {
    return DateFormat('dd MMM yyyy').format(this);
  }
}
