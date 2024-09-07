
class TransactionHistoryModel{
  final String title, data,amount;
final bool?  isWithdrawal;

  TransactionHistoryModel({
    required this.title,
    required this.data,
    required this.amount,
    this.isWithdrawal
  });
}