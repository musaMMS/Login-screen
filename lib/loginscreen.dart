import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''Welcome Back''',
                    style: TextStyle(color: Colors.grey, fontSize: 40),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextFormField(
                      controller: _usernameController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          // border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey.shade700),
                          hintText: 'Enter Yor Email'),
                      validator: (value) {
                        // if (_isDataMatched) {
                        //   return null;
                        // } else {
                        //   return 'Error';
                        // }

                        if (value == null || value.isEmpty) {
                          return 'Value is Empty';
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                    validator: (value) {
                      // if (_isDataMatched) {
                      //   return null;
                      // } else {
                      //   return 'Error';
                      // }

                      if (value == null || value.isEmpty) {
                        return 'Value is Empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: !_isDataMatched,
                        child: Text(
                          'Username Password Does not Match',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              (context);
                            } else {
                              print('Data empty');
                            }
                            ;
                            // checkLogin(context);
                          },
                          icon: Icon(Icons.check),
                          label: Text('Login')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
  }
