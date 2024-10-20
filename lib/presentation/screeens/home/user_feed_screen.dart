import 'package:assignment_project/logic/cubit/product_cubit/product_cubit.dart';
import 'package:assignment_project/logic/cubit/product_cubit/product_state.dart';
import 'package:assignment_project/presentation/widgets/product_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserFeedScreen extends StatefulWidget {
  const UserFeedScreen({super.key});

  @override
  State<UserFeedScreen> createState() => _UserFeedScreenState();
  static const String routeName="home";

}

class _UserFeedScreenState extends State<UserFeedScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title:const Text('Flipkart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 28),),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      actions: [
        IconButton(
           onPressed: (){
           },
            icon:const Badge(
                  label: Text('0'),
                  child:const Icon(
                     CupertinoIcons.cart_fill)
                     )
           )
        ],
      ),
      body: BlocBuilder<ProductCubit,ProductState>(
        builder: (context,state) {

          if(state is ProductLoadingState && state.products.isEmpty){
            return const Center(child: CircularProgressIndicator(),);
          }
          
           if(state is ProductErrorState && state.products.isEmpty){
            return  Center(child: Text(state.message.toString()));
          }
          return ProductListView(products: state.products);
        }
      )
    );
  }
}