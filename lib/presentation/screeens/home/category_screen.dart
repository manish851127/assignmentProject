import 'package:assignment_project/logic/cubit/category_cubit/category_cubit.dart';
import 'package:assignment_project/logic/cubit/category_cubit/category_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
    static const String routeName="home";

}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Category Page'),),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        
        builder: (context, state) {
          if(state is CategoryLoadingState && state.categories.isEmpty){
            return const Center(child: CircularProgressIndicator(),);
          }
           if(state is CategoryErrorState && state.categories.isEmpty){
            return  Center(child: Text(state.message.toString()));
          }

          return ListView.builder(
            itemCount: state.categories.length,
           itemBuilder: (context,index){
            final category=state.categories[index];
            return ListTile(
              onTap: (){
                // category product screen                
              },
              title: Text(category.title.toString()),
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.category),
            );
           },
          
            );
        }
      ),
    );
  }
}