import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../Models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      ammount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      ammount: 19.99,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txtitle, double txammount) {
    final newTx = Transaction(
      title: txtitle,
      ammount: txammount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
     _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          NewTransaction(_addNewTransaction),
          TransactionList(_userTransactions),
        ],
      );    
  }
}
