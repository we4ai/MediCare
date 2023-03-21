import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CatAppFirebaseUser {
  CatAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CatAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CatAppFirebaseUser> catAppFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CatAppFirebaseUser>(
      (user) {
        currentUser = CatAppFirebaseUser(user);
        return currentUser!;
      },
    );
