import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEmployee extends StatefulWidget {
  final bool isNew;
  const NewEmployee({Key? key, required this.isNew}) : super(key: key);

  @override
  State<NewEmployee> createState() => _NewEmployeeState();
}

class _NewEmployeeState extends State<NewEmployee> {

  final TextEditingController _empNoController = TextEditingController();
  final TextEditingController _empNameController = TextEditingController();
  final TextEditingController _addLn1Controller = TextEditingController();
  final TextEditingController _addLn2Controller = TextEditingController();
  final TextEditingController _addLn3Controller = TextEditingController();
  final TextEditingController _deptCodeController = TextEditingController();
  final TextEditingController _basicSalaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){},
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Center(child: Text('New Employee')),
          const Text('Employee number:'),
          TextField(
            controller: _empNoController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
            ),
          ),
          const Text('Employee name:'),
          TextField(
            controller: _empNameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
          ),
          const Text('Employee address line 1:'),
          TextField(
            controller: _addLn1Controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
          ),
          const Text('Employee address line 2:'),
          TextField(
            controller: _addLn2Controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
          ),
          const Text('Employee address line 3:'),
          TextField(
            controller: _addLn3Controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
          ),
          const Text('Department code:'),
          TextField(
            controller: _deptCodeController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
          ),
          const Text('Date of join:'),
          const Text('Date of birth:'),
          const Text('Basic salary:'),
          TextField(
            controller: _basicSalaryController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
          ),
          const Text('Is active?')
        ],
      ),
    );
  }
}
