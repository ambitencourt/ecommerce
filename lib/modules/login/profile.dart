import 'package:ecommerce/shared/widgets/app_text.dart';
import 'package:ecommerce/shared/widgets/custom_sizedbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'google_sign_in.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppText(
          inputText: 'Meu perfil',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: ActionChip(
              backgroundColor: Colors.grey,
              avatar: const Icon(Icons.logout),
              label: const AppText(
                inputText: 'Sair',
                color: Colors.white,
                weightBold: FontWeight.bold,
              ),
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
            customSizedBox20(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppText(inputText: 'Nome: ${user.displayName!}', size: 16),
                AppText(inputText: 'Email: ${user.email!}', size: 16),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
