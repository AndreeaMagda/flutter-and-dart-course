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

  void rollDice() {}

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const  EdgeInsets.only(top: 20),
                foregroundColor: Colors.amber,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
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
