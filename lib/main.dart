import 'package:booky_app/Feature/home/data/repos/home_repo_impl.dart';
import 'package:booky_app/Feature/home/presentation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:booky_app/Feature/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:booky_app/constents.dart';
import 'package:booky_app/core/utils/api_service.dart';
import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/utils/serveris_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServerLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
