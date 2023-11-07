import 'package:api_calling_with_bloc/Data/my_user_model.dart';
import 'package:api_calling_with_bloc/Data/post_repository.dart';
import 'package:api_calling_with_bloc/Logic/api_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PostCubit extends Cubit{
    PostCubit ():super(PostLoadingState())
    {
       PostRepository postRepository = PostRepository();
           void fetchPosts() async{
              try{
                   List<MyAPI> post =await postRepository.fetchPosts();
                   emit(PostLoadedState(post));

              }
              catch(ex){
               emit(PostErrorState(ex.toString()));
              }
           }
    }

}
