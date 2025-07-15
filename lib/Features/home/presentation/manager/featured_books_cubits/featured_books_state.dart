part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitialState extends FeaturedBooksState {}

final class FeaturedBooksLoadingState extends FeaturedBooksState {}

final class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errorMessage;

  const FeaturedBooksFailureState({required this.errorMessage});
}

final class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccessState({required this.books});
}
