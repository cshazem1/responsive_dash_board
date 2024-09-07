
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/my_card.dart';



class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key,required this.pageController});
final PageController pageController ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          scrollDirection: Axis.horizontal,
          controller: pageController,
          onPageChanged: (index) {
          },

          children: List.generate(3, (index) => const Padding(
            padding: EdgeInsets.only(right: 4.0),
            child: MyCard(),
          ),),
        ),
        const SizedBox(height:8 ,),
      ],
    );
  }
}
