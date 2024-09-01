import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
              shape: OvalBorder(), color: Color(0xfffafafa)),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.571 * 2,
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Color(0xff064061),
            ))
      ],
    );
  }
}
