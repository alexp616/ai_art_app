import 'package:ai_art_app/utils/storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ai_art_app/pages/home_page.dart';
import 'package:ai_art_app/utils/authentication.dart';


class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<Storage>(
        builder: (_, globalStore, __) => Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: _isSigningIn
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                  : OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
                          _isSigningIn = true;
                        });
                        
                        User? user = await Authentication.signInWithGoogle(context: context);

                        setState(() {
                          _isSigningIn = false;
                        });

                        if (user != null) {
                          globalStore.user = user;
                          // FirebaseFirestore.instance
                          //     .collection("users")
                          //     .doc(user.uid)
                          //     .get()
                          //     .then((doc) {
                          //   try {
                          //     doc.get("quizzes");
                          //   } catch (err) {
                          //     FirebaseFirestore.instance
                          //         .collection("users")
                          //         .doc(user.uid)
                          //         .set({"quizzes": []});
                          //   }
                          // });

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "google.png",
                              height: 35.0,
                            ),
                            const Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Sign in with Google',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
            ));
  }
}