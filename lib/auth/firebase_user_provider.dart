import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AuctionwareFirebaseUser {
  AuctionwareFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AuctionwareFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AuctionwareFirebaseUser> auctionwareFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AuctionwareFirebaseUser>(
      (user) {
        currentUser = AuctionwareFirebaseUser(user);
        return currentUser!;
      },
    );
