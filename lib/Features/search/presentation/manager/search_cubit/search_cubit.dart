import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepo}) : super(SearchInitialState());
  final SearchRepo searchRepo;

  Future<void> fetchSearchResult( {required String search}) async{
    emit(SearchLoadingState());
    var result =  await searchRepo.fetchSearchResult(search: search);
print("Search result: $search");
print("State: ${state.toString()}");
   result.fold((failure) {
      emit(SearchFailureState(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SearchSuccessState(books: books));
    });
  }
}
