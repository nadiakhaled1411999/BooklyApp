
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit( this.homeRepoImpl, ) : super(SimilarBooksInitialState());
  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoadingState());

    var result = await homeRepoImpl.fetchSimilarBooks(category: category);
    return result.fold((failure) {
      emit(SimilarBooksFailureState(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccessState(books: books));
    });
  }
}
