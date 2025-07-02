import 'package:booky_app/Feature/home/data/repos/home_repo.dart';
import 'package:booky_app/Feature/home/presentation/manager/featured_book_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var results = await homeRepo.fetchFeaturedBooks();
    results.fold(
      (failure) {
        emit(FeaturedBookFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(FeaturedBookSuccess(bookmodel: books));
      },
    );
  }
}
