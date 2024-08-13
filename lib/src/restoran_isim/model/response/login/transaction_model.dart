import 'package:background_json_parser/background_json_parser.dart';

class TransactionModel extends IBaseModel<TransactionModel> {
  TransactionModel({
    this.transactionId,
    this.completed,
  });

  String? transactionId;
  bool? completed;

  @override
  Map<String, dynamic> toJson() => {
        'transaction_id': transactionId,
        'completed': completed ?? false,
      };

  @override
  TransactionModel fromJson(Map json) => TransactionModel(
        transactionId: json['transaction_id'],
        completed: json['completed'] ?? false,
      );
}
