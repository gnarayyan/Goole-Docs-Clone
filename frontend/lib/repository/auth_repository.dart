import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  // final GoogleSignIn _googleSignIn;

  // AuthRepository({required GoogleSignIn googleSignIn})
  //     : _googleSignIn = googleSignIn;

  static void signInWithGoogle() async {
    try {
      final user = await GoogleSignIn().signIn();
      print('name : ${user!.displayName}');
      print('email : ${user.email}');
      print('image : ${user.photoUrl}');
      print('token : ${user.serverAuthCode}');
    } catch (e) {}
  }
}
