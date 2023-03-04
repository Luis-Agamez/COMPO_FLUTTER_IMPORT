import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'firtname': 'Luis',
      'lastname': 'Agamez',
      'email': 'Luis@gmail.com',
      'password': 'innerjoin',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs and Forms'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Form(
                  key: myFormKey,
                  child: Column(
                    children: [
                      CustomInputField(
                          labelText: 'Name',
                          hintText: 'Username',
                          formProperty: 'firtname',
                          formValues: formValues),
                      const SizedBox(height: 30),
                      CustomInputField(
                          labelText: 'LastName',
                          hintText: 'LastName',
                          keyboardType: TextInputType.emailAddress,
                          formProperty: 'lastname',
                          formValues: formValues),
                      const SizedBox(height: 30),
                      CustomInputField(
                          labelText: 'Email',
                          hintText: 'Email',
                          formProperty: 'email',
                          formValues: formValues),
                      const SizedBox(height: 30),
                      CustomInputField(
                          labelText: 'Password',
                          hintText: 'Password',
                          obscureText: true,
                          formProperty: 'password',
                          formValues: formValues),
                      const SizedBox(height: 30),
                      DropdownButtonFormField<String>(
                        value: 'Admin',
                        items: const [
                          DropdownMenuItem(
                              child: Text('Admin'), value: 'Admin'),
                          DropdownMenuItem(
                              child: Text('SuperUser'), value: 'SuperUser'),
                          DropdownMenuItem(
                              child: Text('Developer'), value: 'Developer'),
                          DropdownMenuItem(child: Text('User'), value: 'User')
                        ],
                        onChanged: (value) {
                          print(value);
                          formValues['role'] = value ?? 'Admin';
                        },
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                          onPressed: () {
                            if (!myFormKey.currentState!.validate()) {
                              FocusScope.of(context).requestFocus(FocusNode());
                              print('Form not Valided');
                              return;
                            }
                            print(formValues);
                          },
                          child: const SizedBox(
                              width: 150,
                              height: 50,
                              child: Center(child: Text('Guardar')))),
                    ],
                  ),
                ))));
  }
}
