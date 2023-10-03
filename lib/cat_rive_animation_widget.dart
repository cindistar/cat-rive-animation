import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CatRiveAnimationWidget extends StatefulWidget {
  const CatRiveAnimationWidget({super.key});

  @override
  State<CatRiveAnimationWidget> createState() => _CatRiveAnimationState();
}

class _CatRiveAnimationState extends State<CatRiveAnimationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Rive Animation + Flutter"),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: const SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: RiveAnimation.asset(
          'assets/cat.riv',
          fit: BoxFit.cover,
          stateMachines: ['State Machine 1'],
        ),
      ),
    );
  }
}