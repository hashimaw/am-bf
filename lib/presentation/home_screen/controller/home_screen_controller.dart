import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:am_and_bf_trading/presentation/home_screen/model/question_model.dart';

class HomeScreenController extends GetxController {
 List <Question> questions = [
  Question (question: 'What is the mission of AM & BF Trading PLC?',
   a: 'To provide the latest technologies to clients',
   b: 'To exceed their customer’s expectations by providing solutions that add real value and delivering results within an agreed timeline',
   c: 'To become the leading IT service provider in Ethiopia',
   d: 'To develop mobile applications',
   answer: 'b',
  ),
  Question (question: 'What are the featured services provided by AM & BF Trading PLC?',
   a: 'Website design, Software development, ecommerce web, CMS development, Mobile Application Development, Contact Center Solution, Network Infrastructure, Computing and Storage, Data Entry, and Structured Cabling',
   b: 'Only website design and software development',
   c: 'Only mobile application development and network infrastructure',
   d: 'Only data entry and structured cabling',
   answer: 'a',
  ),
  Question (question: 'What kind of solutions does AM & BF Trading PLC provide?',
   a: 'Solutions for the private/public sector and nonprofit/international organizations',
   b: 'Solutions only for the private sector',
   c: 'Solutions only for the public sector',
   d: 'Solutions only for international organizations',
   answer: 'a',
  ),
  Question (question: 'What is the significance of a Student Information System as per AM & BF Trading PLC?',
   a: 'It is a platform that contains all the information of the students in an institute, in a digital format',
   b: 'It is a platform for teachers to communicate with students',
   c: 'It is a platform for students to submit assignments',
   d: 'It is a platform for parents to monitor their child’s progress',
   answer: 'a',
  ),
  Question (question: 'How does AM & BF Trading PLC ensure the quality of their services?',
   a: 'By assigning a highly qualified team to each project',
   b: 'By using the latest technologies',
   c: 'By creating structurally sound business plans while brainstorming ideas around the project and focusing on the client’s requirements',
   d: 'By exceeding their customer’s expectations',
   answer: 'c',
  ),
  Question (question: 'Who are some of the clients of AM & BF Trading PLC?',
   a: 'Africa CDC, Aids Watch Africa, Timret LeHiwot Ethiopia, Women Support Association, Flintstone Homes, Bonga University',
   b: 'Only Africa CDC and Aids Watch Africa',
   c: 'Only Timret LeHiwot Ethiopia and Women Support Association',
   d: 'Only Flintstone Homes and Bonga University',
   answer: 'a',
  ),
  Question (question: 'What is the main strength of AM & BF Trading PLC?',
   a: 'The experience and commitment of the firm team',
   b: 'The use of the latest technologies',
   c: 'The number of clients they have',
   d: 'The number of services they provide',
   answer: 'a',
  ),
  Question (question: 'What does AM & BF Trading PLC specialize in?',
   a: 'Developing and implementing solutions that enhance a company’s efficiency and effectiveness',
   b: 'Only developing solutions',
   c: 'Only implementing solutions',
   d: 'Enhancing a company’s efficiency and effectiveness',
   answer: 'a',
  ),
  Question (question: 'How does AM & BF Trading PLC approach a project?',
   a: 'They ensure that their solutions are suitable to the specific needs of their clients and assign a highly qualified team to each project',
   b: 'They assign a highly qualified team to each project',
   c: 'They ensure that their solutions are suitable to the specific needs of their clients',
   d: 'They brainstorm ideas around the project',
   answer: 'a',
  ),
  Question (question: 'What does a Student Information System (SIS) contain according to AM & BF Trading PLC?',
   a: 'All the information of the students in an institute, in a digital format',
   b: 'Only the academic information of the students',
   c: 'Only the personal information of the students',
   d: 'Only the contact information of the students',
   answer: 'a',
  ),
 ].obs;
 var loop = 0.obs;
 var score = 0.obs;
void questionShuffler(choice){
 if (choice == questions[loop.value].answer){
  score.value++;
 }
 if(loop.value!=questions.length-1){
  loop.value++;
 }else{
  Get.defaultDialog(
  title: 'Test Completed!', // title of the dialog box
  content: Text('Your Score: ${score.value}/10'), // content of the dialog box
  confirm: TextButton(
   child: Text('Confirm'),
   onPressed: () {
    loop.value=0;
    score.value=0;
    Get.back(); // close the dialog
   },
  ),
 );}

}

}