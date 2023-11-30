import 'package:flutter/material.dart';

class formMassage extends StatelessWidget {
  const formMassage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        autofocus: false,
        maxLines: 10,
        decoration: InputDecoration(
          hintText: "Message",
          labelText: "Message",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
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
