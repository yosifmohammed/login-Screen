import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logInScreen/shared/component/components.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  Icon visible = Icon(Icons.visibility_outlined);

  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 36,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    defaultTextField(
                      control: emailController,
                      label: 'Email',
                      obscure: false,
                      prefixIcon: Icon(Icons.mail),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    defaultTextField(
                      control: passwordController,
                      label: 'Password',
                      obscure: obscure,
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      suffixIcon: IconButton(
                        icon: visible,
                        onPressed: (){
                          obscure? setState(() {
                              visible = Icon(Icons.visibility_off_outlined);
                              obscure = false;
                          }): setState(() {
                            visible = Icon(Icons.visibility_outlined);
                            obscure = true;
                          });
                        },
                      )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: defaultButton(
                        function: () {
                          print(emailController.text);
                          print(passwordController.text);
                        },
                        text: 'login',
                        //isUpperCase : false,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        TextButton(
                            onPressed: null,
                            child: Text(
                              'Register Now',
                              style: TextStyle(color: Colors.purple),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
