import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/home/presentation/views/widgets/transaction_history_item.dart';

import '../../../data/models/transaction_history_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({
    super.key,
  });
  static final List<TransactionHistoryModel> transactionHistoryItems = [
    TransactionHistoryModel(title: "Cash Withdrawal", data: "13 Apr, 2022 ", amount: "20,125",isWithdrawal: true,),
    TransactionHistoryModel(title: "Landing Page project", data: "13 Apr, 2022 ", amount: "20,125",isWithdrawal: false,),
    TransactionHistoryModel(title: "Juni Mobile App project", data: "13 Apr, 2022 ", amount: "20,125",isWithdrawal: false,),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionHistoryItems.map((e) => TransactionHistoryItem(transactionModel: e)).toList(),
    );
  }
}

