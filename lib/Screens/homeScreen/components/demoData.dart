import 'package:flutter/cupertino.dart';
import 'package:sanwopay/Screens/savingsHistoryScreen/savingsDemoData.dart';

class DemoData {
  String accountBalance;
  String income;
  String spent;
  List<TransHistory> accountHistory;
  List<SavingsDemoData> savingsData;
  DemoData({this.accountBalance, this.savingsData, this.accountHistory, this.income, this.spent});
}

class TransHistory {
  String name;
  String description;
  String amount;
  TransHistory({this.amount, this.description, this.name,});
}

List <TransHistory> accountTransactions = [
  TransHistory(
    amount: '-N500',
    description: 'Transport fare',
    name: 'Abdullahi Rasheed',
  ),
  TransHistory(
    amount: '-N500',
    description: 'Transport fare',
    name: 'Abdullahi Rasheed',
  ),
  TransHistory(
    amount: '+N5000',
    description: 'Transport fare',
    name: 'Abdullahi Rasheed',
  ),
  TransHistory(
    amount: '+N5000',
    description: 'Transport fare',
    name: 'Abdullahi Rasheed'
  ),
  TransHistory(
    amount: '+N1000',
    description: 'Transport fare',
    name: 'Abdullahi Rasheed'
  ),
  TransHistory(
    amount: '+N100',
    description: 'Transport fare',
    name: 'Abdullahi Rasheed'
  ),
  
];



List<SavingsDemoData> savingsDemo =[
  SavingsDemoData(
    savingsType: 'Personal savings',
    date: 'OCT 29',
    amount: '+1,000'
  ),

  SavingsDemoData(
    savingsType: 'Group savings',
    date: 'OCT 29',
    amount: '+1,000'
  ),

  SavingsDemoData(
    savingsType: 'installment savings',
    date: 'OCT 29',
    amount: '+2,000'
  ),

  SavingsDemoData(
    savingsType: 'Personal savings',
    date: 'OCT 29',
    amount: '+1,000'
  ),

  SavingsDemoData(
    savingsType: 'Personal savings',
    date: 'OCT 29',
    amount: '+3,000'
  )
];


DemoData demoUser = 
  DemoData(
    accountBalance: 'N 12,000.50',
    accountHistory: accountTransactions,
    income: 'N30,000',
    savingsData: savingsDemo,
    spent: 'N10,000' );
