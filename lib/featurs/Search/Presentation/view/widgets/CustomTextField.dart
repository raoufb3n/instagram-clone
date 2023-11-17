import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';


class CustomTextFields extends StatelessWidget {
  const CustomTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[500],
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide.none),
          hintText: 'Search',
          hintStyle: Styles.titleMeduim13.copyWith(color: Colors.grey[500]),
          filled: true,
          fillColor: Colors.grey[200]),
    );
  }
}
