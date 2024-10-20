import 'package:assignment_project/data/model/Category/category_model.dart';
import 'package:assignment_project/data/repository/category_repository.dart';
import 'package:assignment_project/logic/cubit/category_cubit/category_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryCubit extends Cubit<CategoryState>{
  CategoryCubit(): super(CategoryInitialState()){
    _initialize();
  }
  final _categoryRepository=CategoryRepository();
  void _initialize() async{
    emit(CategoryLoadedState(state.categories));
    try{
     List<CategoryModel> categories= await _categoryRepository.fetchCategories();
     emit(CategoryLoadedState(categories));
    }catch(e){
      emit(CategoryErrorState(state.categories, e.toString()));
    }
  }
}