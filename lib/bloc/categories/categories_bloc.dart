import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_fic7_app/data/datasources/category_remote_datasource.dart';
import '../../data/models/categories_response_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(const _Initial()) {
    on<CategoriesEvent>((event, emit) async {
      emit(const _Loading());
      final result = await CategoryRemoteDatasource().getCategories();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
