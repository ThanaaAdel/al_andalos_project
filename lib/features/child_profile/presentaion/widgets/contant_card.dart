import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:doc_doc_app/core/theming/media_query_helper.dart';
import 'package:flutter/material.dart';

class ContantCardChild extends StatelessWidget {
  const ContantCardChild({
    super.key, required this.text, required this.image,
  });
  final String text;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,

        color:Colors.white,
        shadowColor:  const Color(0xFFCBE6FC),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
        child: Column(children: [
          image,
          Text(text,
            style: TextStyle(
                color: ColorsManager.darkGray,
                fontSize: context.screenWidth*.04,
                fontWeight: FontWeight.w500
            ),
          ),],)//SizedBox
    );
  }
}