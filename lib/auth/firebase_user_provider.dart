import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AuctionWareFirebaseUser {
  AuctionWareFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AuctionWareFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AuctionWareFirebaseUser> auctionWareFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AuctionWareFirebaseUser>(
      (user) {
        currentUser = AuctionWareFirebaseUser(user);
        return currentUser!;
      },
    );
