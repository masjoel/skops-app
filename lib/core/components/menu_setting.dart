import 'package:flutter/material.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/extensions/build_context_ext.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

class MenuSetting extends StatelessWidget {
  final String? iconPath;
  final IconData? iconData;
  final double sizeIconData;
  final String label;
  final bool isActive;
  final VoidCallback onPressed;
  final bool isImage;
  final double size;

  const MenuSetting({
    super.key,
    this.iconPath,
    this.iconData,
    this.sizeIconData = 0.0,
    required this.label,
    this.isActive = false,
    required this.onPressed,
    this.isImage = false,
    this.size = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        child: Container(
          width: context.deviceWidth,
          // margin: const EdgeInsets.only(right: 10.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isActive ? AppColors.white : Colors.grey[100],
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(color: Colors.grey[200]!, width: 0.5),
            boxShadow: List.filled(
              1,
              BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 0.0,
                blurStyle: BlurStyle.outer,
                spreadRadius: 1,
                color: AppColors.black.withOpacity(0.1),
              ),
            ),
          ),
          child: Row(
            children: [
              Icon(
                iconData,
                color: isActive ? AppColors.white : Colors.black45,
                size: sizeIconData,
              ),
              isImage
                  ? Image.asset(
                      iconPath ?? '',
                      width: size,
                      height: size,
                      fit: BoxFit.contain,
                    )
                  : SvgPicture.asset(
                      iconPath ?? '',
                      colorFilter: ColorFilter.mode(
                        isActive ? AppColors.white : AppColors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
              const SpaceWidth(10.0),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    color: isActive ? AppColors.white : AppColors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
