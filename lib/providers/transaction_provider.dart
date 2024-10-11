import 'dart:convert';
import 'package:budget_app_maula/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class TransactionProvider with ChangeNotifier {
  List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  TransactionProvider() {
    loadTransactions();  
  }

  Future<void> loadTransactions() async {
    final prefs = await SharedPreferences.getInstance();
    final String? transactionJson = prefs.getString('transactions'); 

    if (transactionJson != null) {
      List<dynamic> transactionList = jsonDecode(transactionJson);
      _transactions = transactionList
          .map((transactionMap) => Transaction.fromMap(transactionMap))
          .toList();  
      notifyListeners();  
    }
  }
}
