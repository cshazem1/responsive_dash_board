import 'package:flutter/cupertino.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key,required this.isActive,});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),curve: Curves.linear,
      height:  8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color:  isActive ? const Color(0xff4EB7F2) : const Color(0xffe7e7e7)),
    );
  }
}
