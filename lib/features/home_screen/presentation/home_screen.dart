import 'package:doc_doc_app/core/theming/assets.dart';
import 'package:doc_doc_app/core/theming/media_query_helper.dart';
import 'package:doc_doc_app/core/theming/spacing.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/colors.dart';
import '../../auth/login_screen/data/models/api_parent_response_login.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key,required this.parentData});

  final ParentResponseBody parentData;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightGrey,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: context.screenHeight * 0.02,
                horizontal: context.screenWidth * 0.06),
            child: Column(
              children: [
                appbarHome(),
                verticalSpacing(50),
                textAndIconImageInHomeScreen(
                  "Student\`s Name",
                  Image.asset(AssetsImages.iconStudentNameHome),
                ),
                verticalSpacing(30),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        Column(children: [
                             studentItem(index),

                    ],),
                    itemCount: widget.parentData.data!.students!.length,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Row appbarHome() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  welcomeTextAndNameParent(),
                  imageFromParent(),
                ],
              );
  }

  Container studentItem(int index) {
    return Container(
                height: 176.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: context.screenWidth  * 0.03),
                  child: Row(
                    children: [
                      Container(
                        height: 145.h,
                        width: 135.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.sp)),
                        child: Image.network(widget.parentData.data!.students![index].image.toString()),
                      ),
                      horizontalSpacing(15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpacing(15),
                          Text(
                            widget.parentData.data!.students![index].name.toString(),
                            style: TextStyles.font16WithSemiBold,
                          ),
                          verticalSpacing(5),
                          dataInformationFromStudentAndResult( 'positive point : ' , widget.parentData.data!.students![index].positivePoint.toString()),
                          verticalSpacing(3),
                          dataInformationFromStudentAndResult('Negative point : ' ,widget.parentData.data!.students![index].negativePoint.toString()),
                          verticalSpacing(3),
                          dataInformationFromStudentAndResult('Total point : ' ,widget.parentData.data!.students![index].totalPoint.toString()),
                          verticalSpacing(3),
                          dataInformationFromStudentAndResult( 'School Rank : ' ,widget.parentData.data!.students![index].schoolRank.toString()),
                          verticalSpacing(3),
                          dataInformationFromStudentAndResult('Row Rank : ' ,widget.parentData.data!.students![index].rowRank.toString()),
                          verticalSpacing(3),
                          dataInformationFromStudentAndResult('Room Rank : ' ,widget.parentData.data!.students![index].roomRank.toString()),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }

  RichText dataInformationFromStudentAndResult(String dataInfo , String result) {
    return RichText(
                        text: TextSpan(
                          children: [
                             TextSpan(
                              text: dataInfo,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: result,
                              style: TextStyles.font13BlueRegular,
                            ),
                          ],
                        ),
                      );
  }

  Row textAndIconImageInHomeScreen(String text, Widget image) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyles.font20DarkGraySemiBold,
        ),
        image,
      ],
    );
  }

  Container imageFromParent() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.56),
      ),
      height: 62.0,
      width: 62.0,
      padding:
          const EdgeInsets.all(5.0), // Add padding here to create white space
      child: Image.asset(
        AssetsImages.parentHomeImage,
        fit: BoxFit.cover, // You can adjust the BoxFit property as needed
      ),
    );
  }

  Column welcomeTextAndNameParent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Good evening!",
          style: TextStyles.font25DarkGraySemiBold,
        ),
        Text(
          widget.parentData.data!.name.toString(),
          style: TextStyles.font15GraySemiBold,
        )
      ],
    );
  }
}


