
import 'package:assignment_project/core/route.dart';
import 'package:assignment_project/logic/cubit/category_cubit/category_cubit.dart';
import 'package:assignment_project/logic/cubit/product_cubit/product_cubit.dart';
import 'package:assignment_project/logic/user_cubit/user_cubit.dart';
import 'package:assignment_project/presentation/screeens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

       BlocProvider(create: (context)=> UserCubit()),
       BlocProvider(create: (context)=> ProductCubit()),
       BlocProvider(create: (context)=> CategoryCubit()),


      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.onGenerateRoute,
         initialRoute: HomeScreen.routeName,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}

