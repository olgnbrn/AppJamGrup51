import 'package:appjamgrup51/app/app.locator.dart';
import 'package:appjamgrup51/app/app.router.dart';
import 'package:appjamgrup51/services/authentication_service.dart';
import 'package:appjamgrup51/ui/main/main_view_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends MainViewModel{

  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  void signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Kullanıcı kaydı başarılı, ek bilgileri veritabanına kaydedin
      // Örneğin, Firestore kullanıyorsanız:
      FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
        'fullName': 'Kullanıcının Tam Adı',
        'email': email,
        // Diğer kullanıcı bilgileri
      });
    } catch (e) {
      print(e); // Hata yönetimi
    }
  }

  void goToLogin(){
    _navigationService.replaceWithLoginView();
  }
}