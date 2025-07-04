import 'package:bloc/bloc.dart';
import 'package:booky_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:booky_app/Feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());

    var results = await homeRepo.fetchNewestBooks();

    results.fold(
      (failure) {
        emit(NewsetBooksFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(NewsetBooksSuccess(bookModel: books));
      },
    );
  }
}
