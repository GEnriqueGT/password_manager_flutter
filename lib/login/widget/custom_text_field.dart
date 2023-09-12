import 'package:flutter/material.dart';
import 'package:password_manager/resources/colours.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 50.0,
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: redPink,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
