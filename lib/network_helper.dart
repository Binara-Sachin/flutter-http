import 'dart:convert';
import 'package:http/http.dart' as http;
import 'employee_model.dart';

Future<http.Response> createEmployee(
    String empNo,
    String empName,
    String empAddressLine1,
    String empAddressLine2,
    String empAddressLine3,
    String departmentCode,
    String dateOfJoin,
    String dateOfBirth,
    double basicSalary,
    bool isActive
    ) {
  return http.post(
    Uri.parse('http://examination.24x7retail.com/api/v1.0/Employee'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'apiToken': 'voluptate'
    },
    body: jsonEncode(<String, dynamic>{
      'empNo': empNo,
      'empName': empName,
      'empAddressLine1': empAddressLine1,
      'empAddressLine2': empAddressLine2,
      'empAddressLine3': empAddressLine3,
      'departmentCode': departmentCode,
      'dateOfJoin': dateOfJoin,
      'dateOfBirth': dateOfBirth,
      'basicSalary': basicSalary,
      'isActive': isActive
    }),
  );
}

Future<http.Response> updateEmployee(
    String empNo,
    String empName,
    String empAddressLine1,
    String empAddressLine2,
    String empAddressLine3,
    String departmentCode,
    String dateOfJoin,
    String dateOfBirth,
    double basicSalary,
    bool isActive
    ) {
  return http.put(
    Uri.parse('http://examination.24x7retail.com/api/v1.0/Employee'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'apiToken': 'voluptate'
    },
    body: jsonEncode(<String, dynamic>{
      'empNo': empNo,
      'empName': empName,
      'empAddressLine1': empAddressLine1,
      'empAddressLine2': empAddressLine2,
      'empAddressLine3': empAddressLine3,
      'departmentCode': departmentCode,
      'dateOfJoin': dateOfJoin,
      'dateOfBirth': dateOfBirth,
      'basicSalary': basicSalary,
      'isActive': isActive
    }),
  );
}

Future<Employee> getEmployee(String id) async {
  final response = await http.get(
    Uri.parse('http://examination.24x7retail.com/api/v1.0/Employee/$id'),
    headers: <String, String>{
      'apiToken': 'voluptate',
    },
  );

  if (response.statusCode == 200) {
    return Employee.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

Future<List<Employee>> fetchEmployees() async {
  final response = await http.get(
    Uri.parse('http://examination.24x7retail.com/api/v1.0/Employees'),
    headers: <String, String>{
      'apiToken': '?D(G+KbPeSgVkYp3s6v9y\$B&E)H@McQf',
    },
  );

  if (response.statusCode == 200) {
    List<Map<String, dynamic>> listOfEmployeesRaw = jsonDecode(response.body);
    List<Employee> listOfEmployees = [];
    for (Map<String, dynamic> mapData in listOfEmployeesRaw){
      listOfEmployees.add(Employee.fromJson(mapData));
    }
    return listOfEmployees;
  } else {
    throw Exception('Failed to load album');
  }
}

Future<Employee> deleteEmployee(String id) async {
  final http.Response response = await http.delete(
    Uri.parse('http://examination.24x7retail.com/api/v1.0/Employee/$id'),
    headers: <String, String>{
      'apiToken': '?D(G+KbPeSgVkYp3s6v9y\$B&E)H@McQf',
    },
  );

  if (response.statusCode == 200) {
    return Employee.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to delete album.');
  }
}