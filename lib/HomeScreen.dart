import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,), onPressed: (){},),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.notification_important, color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.menu, color: Colors.black,),
          )
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        labelText: 'Email Address',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email))),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: double.infinity,
                    color: Colors.indigoAccent,
                    child: MaterialButton(
                        onPressed: () {
                          print(emailController.text);
                          print(passwordController.text);
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        ))),
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
    );
  }
}
