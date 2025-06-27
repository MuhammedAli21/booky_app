import 'package:booky_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:booky_app/core/errors/failaure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failaure, BookModel>> fetchNewestBooks();
  Future<Either<Failaure, BookModel>> fetchFeaturedBooks();
}
