import 'package:flutter/material.dart';
import '/constans/colors2.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Belum punya akun ? " : "Sudah memiliki akun ? ",
          style: const TextStyle(color: kBlackColor),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Daftar" : "Masuk",
            style: const TextStyle(
              color: kTulisanColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
