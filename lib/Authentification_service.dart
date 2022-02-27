import 'package:firebase_auth/firebase_auth.dart';

class AuthentificationService {
    final FirebaseAuth firebaseAuth ;
    AuthentificationService(this.firebaseAuth);
    Future<String> SignIn({String email, String password}) {
        
    }
}