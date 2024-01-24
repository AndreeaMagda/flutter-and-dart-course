import 'package:flutter/material.dart';
import 'package:my_project/dice_roller.dart';

const startAlignnnet = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.colorStart, this.colorEnd, {super.key});

  const GradientContainer.purple({super.key})
      : colorStart = Colors.deepPurple,
        colorEnd = Colors.indigo;

  final Color colorStart;
  final Color colorEnd;


// method 1
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorStart,
            colorEnd,
          ],
          begin: startAlignnnet,
          end: endAlignment,
        ),
      ),
      child:const Center(
       child:DiceRoller(),
      ),
    );
  }
} 

//method 2

// class GradientContainer extends StatelessWidget{
//   const GradientContainer({super.key, required this.colors});
// final List<Color> colors;
  
//   @override
//   Widget build(context){
//     return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin:startAlignnnet,
//               end:endAlignment ,
//             ),
//           ),
//           child:  Center(
//             child: StyledText('Expecto Patronum 🪄'),
//           ),
//         );
//   }
// }
