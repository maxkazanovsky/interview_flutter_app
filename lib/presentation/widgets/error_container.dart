import 'package:flutter/material.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/generated/colors.gen.dart';

class ErrorContainer extends StatelessWidget {
  final VoidCallback onRetry;
  final String errorText;
  const ErrorContainer({super.key, required this.onRetry, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline_outlined,
          color: AppColors.error,
          size: 100,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          errorText,
          style: context.textStyles.titleSmall!.copyWith(color: AppColors.error, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ElevatedButton(
            onPressed: onRetry,
            child: Text('Retry'),
          ),
        ),
      ],
    );
  }
}
