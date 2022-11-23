import 'package:employees_in_departments/employee_model.dart';
import 'package:employees_in_departments/network_helper.dart';
import 'package:employees_in_departments/newEmploy_screen.dart';
import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late Future<List<Employee>> futureEmployee;

  @override
  void initState() {
    super.initState();
    futureEmployee = fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<List<Employee>>(
          future: futureEmployee,
          builder: (context, snapshot){
            print(snapshot.toString());
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (BuildContext context, index){
                return ListTile(
                  title: Text(snapshot.toString()),
                );
              });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const NewEmployee(isNew: true)));
        },
        tooltip: 'New employee',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
