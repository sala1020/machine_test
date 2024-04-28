import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/presentation/view/favourites/bloc/favourite_bloc.dart';
import 'package:machine_test/presentation/view/home/bloc/listing_page_bloc.dart';
import 'package:machine_test/presentation/view/tab_bar.dart/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ListingPageBloc(),),
                BlocProvider(create: (context) => FavouriteBloc(),),


      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black,
              background: Colors.white,
            ),
            useMaterial3: true,
          ),
          home: const TabBarWidget()),
    );
  }
}
