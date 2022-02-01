import 'package:ecommerce/modules/home/homepage.dart';
import 'package:ecommerce/modules/login/google_sign_in.dart';
import 'package:ecommerce/shared/widgets/app_text.dart';
import 'package:ecommerce/shared/widgets/custom_sizedbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasData) {
                return const HomePage();
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('Algo de errado aconteceu, tente novamente!'),
                );
              } else {
                return SizedBox(
                  height: constraints.maxHeight,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: constraints.maxHeight * .15,
                          ),
                          //Logo + Slogan
                          SizedBox(
                            width: constraints.maxWidth * .75,
                            child: Column(
                              children: const [
                                Ecommerce(),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: AppText(
                                    inputText: 'O seu app de compras online',
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          customSizedBox40(),
                          //Saudações
                          const Padding(
                            padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                            child: AppText(
                              inputText: 'Seja bem-vindo!',
                              color: Colors.white,
                              size: 31,
                              weightBold: FontWeight.bold,
                            ),
                          ),
                          customSizedBox20(),
                          //Campos de login e senha
                          SizedBox(
                            width: constraints.maxWidth * .75,
                            child: Column(
                              children: [
                                const FormLogin(
                                  hintText: 'Usuário',
                                  fillColor: Colors.white,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                                customSizedBox10(),
                                const FormLogin(
                                  hintText: 'Senha',
                                  obscureText: true,
                                  fillColor: Colors.white,
                                  textAlignVertical: TextAlignVertical.bottom,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            Navigator.of(context)
                                                .pushNamed('/register');
                                          });
                                        },
                                        child: const AppText(
                                          inputText: 'Esqueci minha senha',
                                          color: Colors.yellow,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Botão entrar
                          ElevatedButton(
                            onPressed: () {},
                            child: const AppText(
                              inputText: 'ENTRAR',
                              size: 20,
                              weightBold: FontWeight.bold,
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue[800],
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
                                onPressed: () {
                                  // final provider = Provider.of<LoginController>(
                                  //     context,
                                  //     listen: false);
                                  // provider.facebookLogin();
                                  // provider.facebookLogin().whenComplete(
                                  //       () => Navigator.of(context)
                                  //           .pushNamed('/home'),
                                  //     );
                                },
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
                                onPressed: () {
                                  final provider =
                                      Provider.of<GoogleSignInProvider>(context,
                                          listen: false);
                                  provider.googleLogin();
                                  provider.googleLogin().whenComplete(
                                        () => Navigator.of(context)
                                            .pushNamed('/home'),
                                      );
                                },
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
                          //Não tem conta
                          ElevatedButton(
                            onPressed: () {},
                            child: RichText(
                              text: const TextSpan(
                                text: 'Não tem uma conta, cadastre-se ',
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
                );
              }
            }),
      );
    });
  }
}
