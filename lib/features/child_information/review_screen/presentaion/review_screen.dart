import 'package:doc_doc_app/core/theming/media_query_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightGrey,
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            pinned: true,
            snap: true,
            floating: true,
            title: getAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        Column(children: [
                          studentItem(index),

                        ],),
                    itemCount: 2,
                  ),
              childCount: 1,
            ),
          )
        ],
      )

    );

  }
  Widget getAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          S.of(context).review,
          style: TextStyles.font25DarkGraySemiBold,
        ),

      ],
    );
  }
  GestureDetector studentItem(int index) {
    return GestureDetector(
      onTap: (){
      },
      child: Padding(
        padding:EdgeInsets.only(left: context.screenWidth*0.04,right: context.screenWidth*0.03,bottom: context.screenHeight*0.01,top: context.screenHeight*0.02),
        child: Container(
          height: context.screenHeight*0.3,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.sp)),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: context.screenWidth  * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpacing(15),
                Text(
                  "محمد",
                  style: TextStyles.font14DarkGraySemiBold,
                ),
                verticalSpacing(5),
                dataInformationFromStudentAndResult(S.of(context).student_status , "positive"),
                verticalSpacing(1),
                dataInformationFromStudentAndResult(S.of(context).points ,"5"),
                verticalSpacing(1),
                dataInformationFromStudentAndResult(S.of(context).balance ,"5"),
                verticalSpacing(1),
                dataInformationFromStudentAndResult( S.of(context).total_balance ,"5"),
                verticalSpacing(1),
                dataInformationFromStudentAndResult(S.of(context).room_rank ,"5"),
                verticalSpacing(1),
                dataInformationFromStudentAndResult(S.of(context).english ,"english"),
                verticalSpacing(1),
                dataInformationFromStudentAndResult(S.of(context).teacher_name ,"ahmed"),
                verticalSpacing(1),
                dataInformationFromStudentAndResult(S.of(context).date ,"5 / 1 / 2020"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RichText dataInformationFromStudentAndResult(String dataInfo , String result) {
    return RichText(
      text: TextSpan(
        children: [


          TextSpan(
            text: ' $dataInfo :',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' $result ',
            style: TextStyles.font13BlueRegular,
          ),

        ],
      ),
    );
  }
}
