import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/todo_model.dart';

part 'filtered_todos_event.dart';
part 'filtered_todos_state.dart';

class FilteredTodosBloc extends Bloc<FilteredTodosEvent, FilteredTodosState> {
  final List<Todo> initialTodos;
  FilteredTodosBloc({required this.initialTodos})
      : super(FilteredTodosState(filteredTodos: initialTodos)) {
    on<CalculatateFilteredTodosEvent>((event, emit) {
      emit(state.copyWith(filteredTodos: event.filteredTodos));
    });
  }
}
