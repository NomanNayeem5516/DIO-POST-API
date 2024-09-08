
import '../models/post_model.dart';
import 'dio_helper.dart';

class Repository {
  static final DioHelper _dioHelper = DioHelper();

  Future<postModel> responseInMap(Object requestBody) async {
    Map<String, dynamic> response = await _dioHelper.post(
      url: 'https://reqres.in/api/users?page=2',requestBody: requestBody
    );
    return postModel.fromJson(response);
  }

  Future<dynamic> responseInList() async {
    List<dynamic> response = await _dioHelper.get(
      url: 'https://jsonplaceholder.typicode.com/posts',
    );
    return response;
  }
}
