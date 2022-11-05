import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api/gsheets_client.dart';
import 'models/kojin_data.dart';

final deadPeopleListFutureProvider = 
FutureProvider<List<KojinData>>((ref) async {
  final deadRepo = GSheetsClient();
  final deadPeopleList = await deadRepo.fetchData();
  return deadPeopleList;
});
