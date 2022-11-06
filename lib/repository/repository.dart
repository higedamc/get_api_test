import '../api/gsheets_client.dart';

class Repository {
  final api = GSheetsClient();
  dynamic fetchList() async {
    return await api.fetchData();
  }
}