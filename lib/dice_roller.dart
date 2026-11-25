import 'dart:math';

import 'package:flutter/material.dart';

//Steps for stateful widget
//1. Create a class that extends StatefulWidget & create a constructor
//2. Create another class that extends StateClassName
//3. Create a createState() function n the class
//4. Create a build() function in the state class
//5. Use setState for any UI updates

//This class is static side of widget
class DiceRoller extends StatefulWidget {
 const DiceRoller ({super.key});

//Create state helps to render initial UI
// it is only called when the screen is first loaded
//After this, all dynamic/changing screens is handled by _diceRollerState
@override
State<DiceRoller> createState() {
return _DiceRollerState();
 }
}

// Underscore (_) means that the class is private 
//State is the one that render UI "state"
class _DiceRollerState extends State<DiceRoller> {
 final randomizer = Random(); // Random class helps to generates random numbers
 var currentDiceNumber = 1; //Default dice number 

void rollDice(){
  //setState will call the build functiom everytime a variable inside it is updated
  //In this case,setState will call the build function everytime "currentDiceNumber" changes
  //calling build function = rerendering/reloading UI
  setState(() {
  //Since the number generator starts from 0-5,we add 1 to make it 1-6
  currentDiceNumber = randomizer.nextInt(6) + 1;
  });
}
 
@override
Widget build(BuildContext context){
    return Column (
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Image of the dice 
                  Image.asset('assets/dice-$currentDiceNumber.png' , width: 200),
                  // Button that role the dice
                    TextButton(
                      onPressed: rollDice,
                      child: const Text(
                        "Press Me",
                        style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  );
      }
}