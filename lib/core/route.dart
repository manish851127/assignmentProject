import 'package:assignment_project/data/model/product/product_model.dart';
import 'package:assignment_project/presentation/screeens/auth/login_screen.dart';
import 'package:assignment_project/presentation/screeens/auth/signup_screen.dart';
import 'package:assignment_project/presentation/screeens/home/category_screen.dart';
import 'package:assignment_project/presentation/screeens/home/home_screen.dart';
import 'package:assignment_project/presentation/screeens/home/profile_screen.dart';
import 'package:assignment_project/presentation/screeens/home/user_feed_screen.dart';
import 'package:assignment_project/presentation/screeens/product/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
class Routes{
 
  static Route? onGenerateRoute(RouteSettings setting){
    switch(setting.name){
      
           case LogInScreen.routeName: return CupertinoPageRoute(
          builder: (context)=> const LogInScreen());

           case SignUpScreen.routeName: return CupertinoPageRoute(
          builder: (context)=> const SignUpScreen());

          
           case HomeScreen.routeName: return CupertinoPageRoute(
           builder: (context)=> const HomeScreen());

           case UserFeedScreen.routeName: return CupertinoPageRoute(
           builder: (context)=> const UserFeedScreen());

           case CategoryScreen.routeName: return CupertinoPageRoute(
           builder: (context)=> const CategoryScreen());

           case ProfileScreen.routeName: return CupertinoPageRoute(
           builder: (context)=> const ProfileScreen());

            case ProductDetailsScreen.routeName: return CupertinoPageRoute(
           builder: (context)=>  ProductDetailsScreen(
          productModel: setting.arguments as ProductModel,

           ));



           
        default: return null;

    }
  }

}