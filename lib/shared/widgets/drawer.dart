import 'package:ecommerce/modules/login/google_sign_in.dart';
import 'package:ecommerce/shared/widgets/custom_sizedbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'app_text.dart';

drawerMenu(context) {
  final user = FirebaseAuth.instance.currentUser!;
  return Container(
    color: Colors.white,
    child: Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
        child: LayoutBuilder(
          builder: (_, constraints) {
            return SizedBox(
              child: ListView(
                children: [
                  customSizedBox10(),
                  InkWell(
                    child: Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(user.photoURL!),
                          ),
                          customSizedBox10(),
                          AppText(
                              inputText: 'Bem-vindo(a): ${user.displayName!}',
                              size: 18),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed('/profile');
                    },
                  ),

                  customSizedBox40(),
                  //Meus produtos
                  ListTile(
                    horizontalTitleGap: 18,
                    minLeadingWidth: 5,
                    contentPadding: const EdgeInsets.fromLTRB(5, 4, 0, 4),
                    visualDensity: VisualDensity.compact,
                    leading: const FaIcon(
                      FontAwesomeIcons.bookmark,
                      size: 20,
                      color: Colors.white,
                    ),
                    tileColor: Colors.blue[500],
                    title: const AppText(
                      inputText: "Meus Produtos",
                      color: Colors.white,
                      size: 16,
                    ),
                    dense: true,
                    onTap: () {},
                  ),

                  customSizedBox10(),
                  ListTile(
                    horizontalTitleGap: 18,
                    minLeadingWidth: 5,
                    contentPadding: const EdgeInsets.fromLTRB(5, 4, 0, 4),
                    visualDensity: VisualDensity.compact,
                    leading: const FaIcon(
                      FontAwesomeIcons.tools,
                      size: 20,
                      color: Colors.white,
                    ),
                    tileColor: Colors.blue[500],
                    title: const AppText(
                      inputText: "Configurações",
                      color: Colors.white,
                      size: 16,
                    ),
                    dense: true,
                    onTap: () {},
                  ),
                  customSizedBox40(),
                  ActionChip(
                    backgroundColor: Colors.grey,
                    avatar: const Icon(Icons.logout),
                    label: const AppText(
                      inputText: 'Sair',
                      color: Colors.white,
                      weightBold: FontWeight.bold,
                    ),
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.logout();
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ),
  );
}
