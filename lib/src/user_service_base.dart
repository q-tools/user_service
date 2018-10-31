import 'package:rxdart/rxdart.dart';

// UserService provides users authentication handlers methods.
class UserService {
  final onDataChange = BehaviorSubject<String>();
  String _currentUserID;

  UserService() {}

  dynamic get currentUserID => _currentUserID;

  void setCurrentUser(dynamic user) {
    this._currentUserID = user;
    onDataChange.add(user);
  }
}
