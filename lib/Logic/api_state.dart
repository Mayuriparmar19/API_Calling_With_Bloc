import '../Data/my_user_model.dart';

abstract class PostSate{}

class PostLoadingState extends PostSate{}
class PostLoadedState extends PostSate{
  final List<MyAPI>  post;

  PostLoadedState(this.post);
}
class PostErrorState extends PostSate{
   final String errorMSg;

   PostErrorState(this.errorMSg);
}
