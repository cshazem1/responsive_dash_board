import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xfff1f1f1), width: 1)),
          color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.571,
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: Color(0xff064061),
              ))
        ],
      ),
    );
  }
}
