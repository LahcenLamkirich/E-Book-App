import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp/models/User.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

    // create a user
  User userFromFirebaseDatabase(FirebaseUser user) {
    return user != null ? User(user.uid) : null ;
  }
    // Sing in anon
    Future signInAnon() async {
        try{
            AuthResult result = await _firebaseAuth.signInAnonymously();
            FirebaseUser user = result.user;
            return user;
        }catch(e) {
            print(e.toString());
            return null ;
        }
    }

    // register with Email and Password
    Future registerWithEmailAndPassword(String email, String password) async{
        try{
            AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
            FirebaseUser user = result.user;
            return userFromFirebaseDatabase(user) ;
        }catch(e){
          print(e.toString());
          return null ;
        }
    }


}