import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/my_card_page_view.dart';
import '../../../../../core/utils/app_styles.dart';
import 'dots_indicator.dart';

class MyCardSections extends StatefulWidget {
  const MyCardSections({super.key});

  @override
  State<MyCardSections> createState() => _MyCardSectionsState();
}

class _MyCardSectionsState extends State<MyCardSections> {
  final PageController pageController =
      PageController( viewportFraction: 0.95)    ;
  int currentPageIndicator = 0;
  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPageIndicator = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Carts',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(

          currentPageIndex: currentPageIndicator,
        )
      ],
    );
  }
}
