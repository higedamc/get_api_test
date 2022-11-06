import '../api/placeholder_client.dart';

class TestRepository {
  final api = PlaceholderClient();
  dynamic fetchTestList() async {
    return await api.fetchTest();
  }
}