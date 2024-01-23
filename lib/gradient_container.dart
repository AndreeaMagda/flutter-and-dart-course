import 'package:flutter/material.dart';


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
      child: Center(
        child: Image.asset('assets/images/dice-2.png',
        width: 200,),
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
