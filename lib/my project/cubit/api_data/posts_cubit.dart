import 'package:bloc/bloc.dart';
import 'package:counter_with_bloc/my%20project/cubit/api_data/data_service.dart';
import 'package:counter_with_bloc/my%20project/cubit/api_data/post.dart';
import 'package:meta/meta.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<List<Post>> {
  final dataService = DataService();
  PostsCubit() : super([]);
  void get posts async => emit(await dataService.getPosts());
}
