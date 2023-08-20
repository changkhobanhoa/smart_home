// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:smart_home/global/global_style.dart';

class WidgetOnBoard extends StatelessWidget {
  const WidgetOnBoard({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: GlobalStyles.titleBold(context),),  
          SizedBox(
            height: 15,
          ),
          Text(content,style: GlobalStyles.titleRegular1(context) ,),  
    
        ],
      ),
    );
  }
}
