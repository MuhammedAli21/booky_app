import 'package:booky_app/Feature/home/presentation/views/book_details_view.dart';
import 'package:booky_app/Feature/home/presentation/views/home_view.dart';
import 'package:booky_app/Feature/search/presentaion/views/search_view.dart';
import 'package:booky_app/Feature/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomePage = '/HomePage';
  static const kBookDetails = '/BookDetails';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      GoRoute(path: kHomePage, builder: (context, state) => HomePage()),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}
