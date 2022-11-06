import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api/gsheets_client.dart';
import 'models/kojin_data.dart';
import 'models/test.dart';
import 'repository/repository.dart';
import 'repository/test_repository.dart';

// final listProvider = 
// FutureProvider<List<KojinData>>((ref) async {
//   final deadRepo = GSheetsClient();
//   final deadPeopleList = await deadRepo.fetchData();
//   return deadPeopleList ?? [];
// });

final repositoryProvider = Provider((ref) => Repository());

final listProvider = FutureProvider<List<KojinData>>((ref) async {
  final repo = ref.watch(repositoryProvider);
  return await repo.fetchList();
});

final repositoryTestProvider = Provider((ref) => TestRepository());

final testProvider = FutureProvider<List<Test>>((ref) async {
  final testRepo = ref.watch(repositoryTestProvider);
  return await testRepo.fetchTestList();
});