import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    Key? key,
    this.hintTextt = "",
    this.suffixTextt = "",
    this.isObsecure = false,
  }) : super(
          key: key,
        );
  final String hintTextt;
  final String suffixTextt;
  final bool isObsecure;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isObsecure,
      maxLength: 10,
      cursorWidth: 1.5 * 2,
      cursorRadius: const Radius.circular(3),
      minLines: 1,
      maxLines: 1,
      style: const TextStyle(color: Colors.white),
      showCursor: true,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: Colors.white, style: BorderStyle.solid, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: Colors.white, style: BorderStyle.solid, width: 2),
        ),
        hintText: widget.hintTextt,
        hintStyle: const TextStyle(color: Colors.grey),
        suffixText: widget.suffixTextt,
        suffixStyle: const TextStyle(color: Colors.white70),
        fillColor: Colors.white,
      ),
    );
  }
}