import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleServices {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  static Future<User?> SigninWithGoogle() async {
    try {
      // for getting new user
      await _googleSignIn.signOut();

      // for getting user
      final GoogleSignInAccount? guser = await GoogleSignIn().signIn();

      if (guser == null) return null;

      // for cred
      final GoogleSignInAuthentication gauth = await guser!.authentication;

      // create credential
      final credential = GoogleAuthProvider.credential(
        accessToken: gauth.accessToken,
        idToken: gauth.idToken,
      );
      final UserCredential userCredential = await _auth.signInWithCredential(
        credential,
      );
      // final return user
      return userCredential.user;
    } catch (e) {
      print("error");
    }
  }
}
