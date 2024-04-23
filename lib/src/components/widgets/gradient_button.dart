import 'package:fitofan_ui/fitofan_ui.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  const GradientButton({
    super.key,
    required this.onTap,
    required this.child,
    this.textPadding = 16,
    this.borderRadius = 8,
    required this.gradient,
    required this.pressedColor,
    this.border,
  });

  const GradientButton.pink({
    super.key,
    required this.onTap,
    required this.child,
    this.textPadding = 16,
    this.borderRadius = 8,
    this.gradient = Palette.buttonsPinkGradient,
    this.pressedColor = Palette.pink2,
    this.border,
  });

  const GradientButton.purple({
    super.key,
    required this.onTap,
    required this.child,
    this.textPadding = 16,
    this.borderRadius = 8,
    this.gradient = Palette.buttonsPurpleGradient,
    this.pressedColor = Palette.pink2,
    this.border,
  });

  const GradientButton.green({
    super.key,
    required this.onTap,
    required this.child,
    this.textPadding = 16,
    this.borderRadius = 8,
    this.gradient = Palette.buttonsGreenGradient,
    this.pressedColor = Palette.primaryGreenMain,
    this.border,
  });

  const GradientButton.orange({
    super.key,
    required this.onTap,
    required this.child,
    this.textPadding = 16,
    this.borderRadius = 8,
    this.gradient = Palette.buttonsYellowOrangeGradient,
    this.pressedColor = Palette.orange,
    this.border,
  });

  final void Function()? onTap;
  final Widget child;
  final double textPadding;
  final double borderRadius;
  final LinearGradient gradient;
  final Color pressedColor;
  final BoxBorder? border;

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    bool isDisabled = widget.onTap == null;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return const Color.fromRGBO(255, 255, 255, 0.08);
          }
          if (states.contains(MaterialState.pressed)) {
            return const Color.fromRGBO(255, 255, 255, 0.12);
          }
          if (states.contains(MaterialState.focused)) {
            return const Color.fromRGBO(255, 255, 255, 0.12);
          }
          if (states.contains(MaterialState.disabled)) {
            return Colors.black;
          }
          return null;
        }),
        splashColor: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
        onTap: widget.onTap,
        onHighlightChanged: (value) => {
          setState(() {
            isPressed = value;
          })
        },
        child: Ink(
          decoration: BoxDecoration(
            border: isDisabled ? null : widget.border,
            color: isDisabled
                ? Palette.buttonsActionDisabled
                : isPressed
                    ? widget.pressedColor
                    : null,
            gradient: isDisabled || isPressed ? null : widget.gradient,
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius)),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: widget.textPadding),
              child: Opacity(
                opacity: isDisabled ? 0.34 : 1,
                child: widget.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
