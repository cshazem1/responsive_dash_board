import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/transaction_history_listView.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('13 April 2022',style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xFFAAAAAA)),),
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
