import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String phonenumber,
    required String passsword,
    required String username,
  }) async {
    String result = 'Some error occured';
    try {
      if (phonenumber.isNotEmpty ||
          passsword.isNotEmpty ||
          username.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: phonenumber, password: passsword);
        _firestore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid': credential.user!.uid,
          'email': phonenumber,
          'following': [],
          'followers': []
        });
        result = 'succes';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}
