import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF696C9F),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'ADD',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
