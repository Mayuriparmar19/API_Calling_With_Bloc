import 'package:api_calling_with_bloc/Logic/api_cubit.dart';
import 'package:api_calling_with_bloc/Logic/api_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'API Calling with Bloc',
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<PostBlocCubit, PostApiState>(
          builder: (context, state) {
            if (state is PostLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PostLoadedState) {
              return ListView.builder(
                  itemCount: state.posts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(
                        state.posts[index].id.toString(),
                      ),
                      title: Text(state.posts[index].title.toString()),
                      subtitle: Text(
                          'User ID:${state.posts[index].userId.toString()}'),
                      trailing: Text(state.posts[index].completed.toString()),
                    );
                  });
            }

            return const Center(
              child: Text(
                'Something Went Wrong!!',
                style: TextStyle(color: Colors.red),
              ),
            );
          },
        ),
      ),
    );
  }
}
