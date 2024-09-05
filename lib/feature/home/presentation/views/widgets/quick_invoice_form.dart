import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/title_text_field.dart';

import 'custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer name",
                header: "Type customer name",
              ),
            ),
            SizedBox(width: 16,),
            Expanded(
              child: TitleTextField(
                title: "Customer email",
                header: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 12,),
        Row(children: [
          Expanded(
            child: TitleTextField(
              title: "Item name",
              header: "Type customer name",
            ),
          ),
          SizedBox(width: 16,),
          Expanded(
            child: TitleTextField(
              title: "Item mount",
              header: " USD",
            ),
          ),

        ],),
SizedBox(height: 12,),
Row(children: [
  Expanded(child: CustomButton(backgroundColor: Colors.white,textColor: Color(0xff4EB7F2),)),
  SizedBox(width: 24,),
  Expanded(child: CustomButton())


],)
      ],
    );
  }
}
