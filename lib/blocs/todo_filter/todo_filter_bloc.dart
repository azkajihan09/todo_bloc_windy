import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/todo_model.dart';

part 'todo_filter_event.dart';
part 'todo_filter_state.dart';

class TodoFilterBloc extends Bloc<TodoFilterEvent, TodoFilterState> {
  TodoFilterBloc() : super(TodoFilterState.initial()) {
    on<TodoFilterEvent>((event, emit) {
      on<ChangeFilterEvent>(
          (event, emit) => emit(state.copyWith(filter: event.newFilter)));
    });
  }
}
