import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/presentation/view/common_widget/main_tile.dart';
import 'package:machine_test/presentation/view/home/bloc/listing_page_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ListingPageBloc>().add(ListingDataEvent());
    return Scaffold(
      body: BlocBuilder<ListingPageBloc, ListingPageState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ListingDataState) {
            return ListView.builder(
              itemCount: state.articles.length,
              itemBuilder: (context, index) {
                final data = state.articles[index];
                return state.articles.isNotEmpty?
                DataBox(
                  data: data,
                  isFavourite: false,
                ):const Center(child: Text('No Data'),);
              },
            );
          }
          return const Text('Error');
        },
      ),
    );
  }
}
