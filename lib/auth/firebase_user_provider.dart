import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FitlyFirebaseUser {
  FitlyFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FitlyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FitlyFirebaseUser> fitlyFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FitlyFirebaseUser>((user) => currentUser = FitlyFirebaseUser(user));
