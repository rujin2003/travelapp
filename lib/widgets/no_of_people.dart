// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NumberOfPeople extends StatefulWidget {
 final Color bgcolor;
  String num;
  final Color txtColor;
   NumberOfPeople({super.key,required this.bgcolor,required this.num, required this.txtColor});

  @override
  State<NumberOfPeople> createState() => _NumberOfPeopleState();
}

class _NumberOfPeopleState extends State<NumberOfPeople> {
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.all(8),
     height: 60,width: 60,decoration: BoxDecoration(
      boxShadow: const [
      BoxShadow(
        blurRadius: 2,
        ),
      
    ],
      borderRadius: BorderRadius.circular(8),color: widget.bgcolor),child: Center(child: Text(widget.num,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: widget.txtColor),)),);
  }
}