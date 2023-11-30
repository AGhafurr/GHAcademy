import 'package:flutter/material.dart';

class formEmail extends StatelessWidget {
  const formEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Email",
          labelText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value!.isEmpty) {
            return "Email Harus Terisi!";
          }
          return null;
        },
      ),
    );
  }
}
