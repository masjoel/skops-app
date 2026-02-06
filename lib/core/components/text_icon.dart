import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color iconColor;
  final Color labelColor;
  final double iconSize;
  final double fontSize;
  final EdgeInsetsGeometry padding;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final Color backgroundColor; // <-- tambahan

  const TextIcon({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.iconColor = Colors.black,
    this.iconSize = 18,
    this.labelColor = Colors.black,
    this.fontSize = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
    this.borderColor = Colors.grey,
    this.borderWidth = 1,
    this.borderRadius = 4,
    this.backgroundColor = Colors.transparent, // <-- default transparan
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: iconColor, size: iconSize),
      label: Text(
        label,
        style: TextStyle(fontSize: fontSize, color: labelColor),
      ),
      style: TextButton.styleFrom(
        padding: padding,
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        side: BorderSide(color: borderColor, width: borderWidth),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: backgroundColor, // <-- dipakai di sini
      ),
    );
  }
}
