import 'package:flutter/material.dart';

/// Texto genérico utilizado em todo o app
///
class AppText extends StatelessWidget {
  final String inputText;
  final Color? color;
  final double? size;
  final FontWeight weightBold;
  final TextAlign? textAlign;
  final String? fontFamily;
  const AppText({
    Key? key,
    required this.inputText,
    this.color,
    this.size,
    this.weightBold = FontWeight.normal,
    this.textAlign,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: weightBold,
          fontFamily: fontFamily),
      textAlign: textAlign,
    );
  }
}

// Letra E em destaque
class Ecommerce extends StatelessWidget {
  const Ecommerce({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: 'E',
          style: TextStyle(
            color: Colors.white,
            fontSize: 60,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'commerce',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}

// Formulário de Login
class FormLogin extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Color? fillColor;
  final TextAlignVertical? textAlignVertical;

  const FormLogin({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.fillColor,
    this.textAlignVertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 45,
      child: TextField(
        textAlignVertical: textAlignVertical,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF767676),
          ),
          filled: true,
          fillColor: fillColor,
          contentPadding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
