import 'package:dice_roll_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer ({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 232, 155, 222),Color.fromARGB(255, 230, 52, 138)]
              ),
             ),
             child: Center(
              child: DiceRoller()
                ),
               );
  
}}