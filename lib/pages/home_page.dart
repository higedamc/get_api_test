import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_api_test/api/gsheets_client.dart';

import '../models/kojin_data.dart';
import '../providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final kojinDataProvider = ref.watch(listProvider);
    // final kojinDataProvider = ref.watch(testProvider);

    return Scaffold(
        appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            // title: Text(widget.title),
            ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: kojinDataProvider.when(
            data: (data) => data.isNotEmpty
                ? ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (_, index) => Card(
                      child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return SimpleDialog(
                                    // title: Text(data[index].id?.toString() ?? ''),
                                    // title: Text(data[index].),
                                    children: [
                                      SimpleDialogOption(
                                        child: Text(data[index].profile ??
                                            'No Profile'),
                                        //  child: Text(
                                        //     data[index].userId.toString()),
                                      )
                                    ],
                                  );
                                });
                          },
                          child: ListTile(
                            leading:
                                Text(data[index].jobs?.toString() ?? 'No Jobs'),
                            // leading: Text(data[index].title.toString()),
                            title: Text(data[index]
                                        .country ??
                                    'No Country'),
                            //  title: Text(data[index].title.toString()),
                            subtitle:
                                Text(data[index].lastName ?? 'No Last Name'),
                          )),
                      // data[index].body.toString())),
                    ),
                  )
                : const Text('No Data'),
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => Text(error.toString()),
          ),
        ));
  }
}
