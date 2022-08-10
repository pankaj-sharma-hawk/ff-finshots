import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NewsShotsFirebaseUser {
  NewsShotsFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

NewsShotsFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NewsShotsFirebaseUser> newsShotsFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<NewsShotsFirebaseUser>(
        (user) => currentUser = NewsShotsFirebaseUser(user));
