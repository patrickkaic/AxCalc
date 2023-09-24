import 'package:flutter/material.dart';

class SearchingBar extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function()? onPressed;

  const SearchingBar({
    super.key,
    required this.controller,
    required this.hintText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: const Color.fromARGB(35, 88, 89, 92),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: onPressed,
          ),
          prefixIcon: const IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
