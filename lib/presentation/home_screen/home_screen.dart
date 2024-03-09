import 'dart:math';
import 'package:am_and_bf_trading/presentation/home_screen/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
final HomeScreenController homeScreenController = Get.put(HomeScreenController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children:[
                Container(
                  height: 350,
                ),
                Container(
                height: 228,
                decoration: ShapeDecoration(
                  color: Color(0xFFA32EC1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

                Positioned(
                  top: 150,
                  left: 30,
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 70,),
                        Obx(
                              ()=> Text(
                                "Question ${homeScreenController.loop.value + 1}/10" ,
                            style: TextStyle(
                              color: Color(0xFFA32EC1),
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Obx(
                          ()=> Text(
                           homeScreenController.questions[homeScreenController.loop.value].question,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2B252C),
                              fontSize: 18,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 170,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 3,
                          offset: Offset(0, 3), // Changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(
                          ()=> Text(
                            homeScreenController.score.value.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA32EC1),
                              fontSize: 22,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
        ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      homeScreenController.questionShuffler('a');
                    },
                    child: Container(
                      width: 350,
                      constraints: const BoxConstraints(
                        maxHeight: 200,
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFA32EC1),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Obx(
                              ()=> Text(
                            homeScreenController.questions[homeScreenController.loop.value].a,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF2B252C),
                            fontSize: 18,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      homeScreenController.questionShuffler('b');
                    },
                    child: Container(
                      width: 350,
                      constraints: const BoxConstraints(
                        maxHeight: 200,
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFA32EC1),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Obx(
                              ()=> Text(
                            homeScreenController.questions[homeScreenController.loop.value].b,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2B252C),
                              fontSize: 18,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      homeScreenController.questionShuffler('c');
                    },
                    child: Container(
                      width: 350,
                      constraints: const BoxConstraints(
                        maxHeight: 200,
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFA32EC1),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Obx(
                              ()=> Text(
                                homeScreenController.questions[homeScreenController.loop.value].c,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2B252C),
                              fontSize: 18,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      homeScreenController.questionShuffler('d');
                    },
                    child: Container(
                      width: 350,
                      constraints: const BoxConstraints(
                        maxHeight: 200,
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFA32EC1),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Obx(
                              ()=> Text(
                              homeScreenController.questions[homeScreenController.loop.value].d,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2B252C),
                              fontSize: 18,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        );
  }
}

