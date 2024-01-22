
import 'package:doc_doc_app/core/helper/extentions.dart';
import 'package:doc_doc_app/core/theming/media_query_helper.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import '../../../core/theming/assets.dart';
import '../../../core/theming/colors.dart';
import '../../../generated/l10n.dart';
import 'widgets/contant_card.dart';

class ChildProfileScreen extends StatefulWidget {
  const ChildProfileScreen(
      {super.key, required this.nameStudent});
final String nameStudent;


  @override
  State<ChildProfileScreen> createState() => _ChildProfileScreenState();
}

class _ChildProfileScreenState extends State<ChildProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.lightGrey,
        body: CustomScrollView(
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
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget getAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          S.of(context).child_profile,
          style: TextStyles.font25DarkGraySemiBold,
        ),

      ],
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding:  EdgeInsets.only(left: context.screenWidth*0.03, right: context.screenWidth*0.03, top: context.screenHeight*0.03),
      child: Column(
        children: [
          Column(
            children: <Widget>[
              Column(
                children: [
                  CircleAvatar(
                    radius: context.screenHeight * .06,
                    backgroundImage: const AssetImage(AssetsImages.childImage),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Text(
                    widget.nameStudent,
                    style: TextStyles.font20DarkGraySemiBold,
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),

                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                ],
              ),
              allTasksWithChild()
            ],
          ),
        ],
      ),
    );
  }

  Column allTasksWithChild() {
    return Column(
      children: [
        SizedBox(
          height: context.screenHeight,
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            children: [
              GestureDetector(
                onTap: () {
context.pushNamed('/reviewScreen');
                },
                child: ContantCardChild(
                  text: S.of(context).review,
                  image: Image.asset(
                      width: context.screenWidth * 0.15,
                      height: context.screenHeight * 0.15,
                      AssetsImages.reviewImageChildPage),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed('/examScreen');
                },
                child: ContantCardChild(
                  text: S.of(context).exams,
                  image: Image.asset(
                      width: context.screenWidth * 0.15,
                      height: context.screenHeight * 0.15,
                      AssetsImages.examImageChildPage),
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: ContantCardChild(
                  text:S.of(context).absence,
                  image: Image.asset(
                      width: context.screenWidth * 0.15,
                      height: context.screenHeight * 0.15,
                      AssetsImages.absentImageChildPage),
                ),
              ),
              ContantCardChild(
                text: S.of(context).student_degrees,
                image: Image.asset(
                    width: context.screenWidth * 0.15,
                    height: context.screenHeight * 0.15,
                    AssetsImages.degreeStudentImageChildPage),
              ),
              GestureDetector(
                onTap: () {

                },
                child: ContantCardChild(
                  text: S.of(context).messages,
                  image: Image.asset(
                      width: context.screenWidth * 0.15,
                      height: context.screenHeight * 0.15,
                      AssetsImages.messageStudentImageChildPage),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
