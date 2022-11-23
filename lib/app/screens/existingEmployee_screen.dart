import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExistingEmployee extends StatefulWidget {
  final bool isNew;
  const ExistingEmployee({Key? key, required this.isNew}) : super(key: key);

  @override
  State<ExistingEmployee> createState() => _ExistingEmployeeState();
}

class _ExistingEmployeeState extends State<ExistingEmployee> {

  late String _empNo;
  late String _empName;
  late String _empAddressLine1;
  late String _empAddressLine2;
  late String _empAddressLine3;
  late String _departmentCode;
  late String _dateOfJoin;
  late String _dateOfBirth;
  late double _basicSalary;
  late bool _isActive;

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
          Text(_empNo),
          const Text('Employee name:'),
          Text(_empName),
          const Text('Employee address line 1:'),
          Text(_empAddressLine1),
          const Text('Employee address line 2:'),
          Text(_empAddressLine2),
          const Text('Employee address line 3:'),
          Text(_empAddressLine3),
          const Text('Department code:'),
          Text(_departmentCode),
          const Text('Date of join:'),
          Text(_dateOfJoin),
          const Text('Date of birth:'),
          Text(_dateOfBirth),
          const Text('Basic salary:'),
          Text(_basicSalary.toString()),
          const Text('Is active?'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(onPressed: (){}, child: const Text('Delete', style: TextStyle(color: Colors.white),), color: Colors.red,),
              FlatButton(onPressed: (){}, child: const Text('Edit', style: TextStyle(color: Colors.white),), color: Colors.blue,)
            ],
          )
        ],
      ),
    );
  }
}