import 'package:booky_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:booky_app/Feature/home/data/repos/home_repo.dart';
import 'package:booky_app/core/errors/failaure.dart';
import 'package:booky_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);
  ApiService apiService;
  @override
  Future<Either<Failaure, BookModel>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'https://www.googleapis.com/books/v1/volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest ',
      );
      return right(BookModel.fromJson(data));
    } on DioException catch (e) {
      return left(ServerFailaure.fromDioError(e));
    } on Exception catch (e) {
      return left(ServerFailaure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failaure, BookModel>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
