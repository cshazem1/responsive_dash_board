import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.header});
final  String header;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration:InputDecoration(
        hintText: header,
          hintStyle: AppStyles.styleRegular16(context).copyWith(color: const Color(0xffaaaaaa)),

          fillColor: const Color(0xffFAFAFA),
          border:buildBorder() ,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          filled: true
      ) ,
    );
  }
  OutlineInputBorder buildBorder() {
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xffFAFAFA)),

    );
  }
}
