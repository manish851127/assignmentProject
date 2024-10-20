abstract class UserState{}

class  UserInitialState extends UserState{}

class UserLoadingState extends UserState{}

class UserLoggedInState extends UserState{}

class UserLoggedOutState extends UserState{}


class UserErrorState extends UserState{
  final String message;
  UserErrorState(this.message);
}
