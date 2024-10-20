import 'package:assignment_project/logic/user_cubit/user_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState>{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  UserCubit(): super(UserInitialState());

  void signInUser(String email, String password) async{

    
     try{
      emit(UserLoadingState());
       await _auth.signInWithEmailAndPassword(email: email, password: password);
       emit(UserLoggedInState());
     }
     catch(e){
      emit(UserErrorState("Some error found"));
     }
  }
  
  
  void registerUser(String email, String password) async{
     try{
      emit(UserLoadingState());
       await _auth.createUserWithEmailAndPassword(email: email, password: password);
       emit(UserLoggedInState());
     }
     catch(e){
      emit(UserErrorState("Some error found"));
     }
  }

     void logoutUser() async {
      try {
        emit(UserLoadingState());  // Emit loading state while signing out
        await _auth.signOut();
        emit(UserLoggedOutState());  // Emit logged out state after successful sign out
      } catch (e) {
        emit(UserErrorState("Error occurred while logging out"));
      }
    }



}