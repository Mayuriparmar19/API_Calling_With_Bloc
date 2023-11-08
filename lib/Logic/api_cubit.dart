import 'package:api_calling_with_bloc/Data/my_user_model.dart';
import 'package:api_calling_with_bloc/Data/post_repository.dart';
import 'package:api_calling_with_bloc/Logic/api_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBlocCubit extends Cubit<PostApiState>{
    PostBlocCubit ():super(PostLoadingState()) {
      fetchPosts();
    }

       PostApiRepository postRepository = PostApiRepository();
           void fetchPosts() async{
              try{
                   List <MyAPI> posts = await postRepository.fetchPosts();

                   emit(PostLoadedState(posts));

              }
              catch(ex){
               emit(PostErrorState(ex.toString()));
              }
           }
    }


