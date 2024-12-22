import 'package:flutter/material.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/presentation/widgets/blurred_container.dart';

class BlurredInput extends StatefulWidget {
  final double width;
  final TextStyle? textStyle;
  final TextInputType keyboardType;
  final TextInputAction? inputAction;
  final TextAlign? textAlign;
  final String initialValue;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  const BlurredInput({
    super.key,
    required this.width,
    this.textStyle,
    this.inputAction,
    this.textAlign,
    this.errorText,
    this.keyboardType = TextInputType.text,
    this.initialValue = '',
    this.onChanged,
    this.onSubmitted,
  });

  @override
  State<BlurredInput> createState() => _BlurredInputState();
}

class _BlurredInputState extends State<BlurredInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlurredContainer(
      width: widget.width,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          controller: _controller,
          onChanged: widget.onChanged,
          onSubmitted: widget.onSubmitted,
          textAlign: widget.textAlign ?? TextAlign.center,
          autocorrect: false,
          enableSuggestions: false,
          style: widget.textStyle ?? context.textStyles.titleLarge,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
          textInputAction: widget.inputAction,
          keyboardType: widget.keyboardType,
        ),
      ),
    );
  }
}
