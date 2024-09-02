import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackgroundColor,
  });
  final String image;
  final Color? imageBackgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: imageBackgroundColor ?? const Color(0xffFAFAFA)),
          child: Center(
            child: SvgPicture.asset(image,
                colorFilter: ColorFilter.mode(
                    imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn)),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.571 * 2,
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color:
                  imageColor == null ? const Color(0xff064061) : Colors.white,
            ))
      ],
    );
  }
}
