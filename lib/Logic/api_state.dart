import '../Data/my_user_model.dart';

abstract class PostApiState{}

class PostLoadingState extends PostApiState{}

class PostLoadedState extends PostApiState{
  final List<MyAPI>  posts;
  PostLoadedState(this.posts);
}
class PostErrorState extends PostApiState{
   final String errorMSg;

   PostErrorState(this.errorMSg);
}
