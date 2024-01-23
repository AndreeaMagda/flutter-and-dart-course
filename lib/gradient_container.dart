import 'package:flutter/material.dart';
import 'package:my_project/styled_text.dart';

var startAlignnnet=Alignment.topLeft;
var endAlignment=Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
  @override
  Widget build(context){
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color.fromARGB(255, 204, 161, 239),
                Color.fromARGB(255, 150, 98, 205),
              ],
              begin:startAlignnnet,
              end:endAlignment ,
            ),
          ),
          child: const Center(
            child: StyledText()
          ),
        );
  }
} 
