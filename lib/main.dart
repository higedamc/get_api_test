import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_api_test/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home: const ProviderScope(
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {

  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final kojinDataProvider = ref.watch(deadPeopleListFutureProvider);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: kojinDataProvider.when(
          data: (data) => ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(data[index].id.toString()),
                title: Text(data[index].firstName),
                subtitle: Text(data[index].lastName),
              );
            },
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text(error.toString()),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: ref.refresh(kojinDataProvider),
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
