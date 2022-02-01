import 'package:ecommerce/shared/widgets/app_text.dart';
import 'package:ecommerce/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: SizedBox(
          height: constraints.maxHeight,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: SizedBox(
                      child: Column(children: [
                        const FaIcon(
                          FontAwesomeIcons.userAlt,
                          size: 60,
                          color: Colors.white,
                        ),
                        customSizedBox10(),
                        const AppText(
                          inputText: 'Alterar imagem',
                          color: Colors.white,
                          size: 15,
                          weightBold: FontWeight.bold,
                        ),
                      ]),
                    ),
                    onTap: () {},
                  ),
                  customSizedBox20(),
                  const AppText(
                    inputText: 'Cadastre-se!',
                    color: Colors.white,
                    size: 31,
                    weightBold: FontWeight.bold,
                  ),
                  customSizedBox10(),

                  //Usuário
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AppText(
                        inputText: 'Usuário',
                        color: Colors.white,
                        size: 16,
                        textAlign: TextAlign.left,
                        weightBold: FontWeight.bold,
                      ),
                      FormLogin(
                        hintText: '',
                        fillColor: Colors.white,
                      ),
                    ],
                  ),
                  customSizedBox20(),
                  //Senha
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AppText(
                        inputText: 'Senha',
                        color: Colors.white,
                        size: 16,
                        textAlign: TextAlign.left,
                        weightBold: FontWeight.bold,
                      ),
                      FormLogin(
                        hintText: '',
                        fillColor: Colors.white,
                      ),
                    ],
                  ),
                  customSizedBox20(),
                  //Confirmar senha
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AppText(
                        inputText: 'Confirmar senha',
                        color: Colors.white,
                        size: 16,
                        textAlign: TextAlign.left,
                        weightBold: FontWeight.bold,
                      ),
                      FormLogin(
                        hintText: '',
                        fillColor: Colors.white,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ValueListenableBuilder(builder: ,);
                    },
                    child: const AppText(
                      inputText: 'CADASTRAR',
                      size: 20,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),

                  customSizedBox40(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Botão Facebook
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.facebookF),
                        label: const AppText(
                          inputText: 'facebook',
                          size: 20,
                          weightBold: FontWeight.bold,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF365899),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),

                      //Botão Google
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.google),
                        label: const AppText(
                          inputText: 'Google',
                          size: 20,
                          weightBold: FontWeight.bold,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFF0303),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ],
                  ),
                  customSizedBox10(),
                  //Já tem conta
                  ElevatedButton(
                    onPressed: () {},
                    child: RichText(
                      text: const TextSpan(
                        text: 'Já tem uma conta, faça login ',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 18,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'aqui',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
