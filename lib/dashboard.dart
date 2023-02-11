import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _LoginPageState();
}

class _LoginPageState extends State<Dashboard> {
  bool obscuredPass = true;
  var etNameText = TextEditingController();
  var etPassText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Text"),
      ),
      body: Center(
          child: Container(
              color: Color.fromARGB(255, 203, 224, 234),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: etNameText,
                      decoration: InputDecoration(
                        labelText: "Email",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    TextFormField(
                      controller: etPassText,
                      obscureText: obscuredPass,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        labelText: "Password",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.amber,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscuredPass = !obscuredPass;
                            });
                          },
                          icon: Icon(obscuredPass
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String email = etNameText.text.toString();
                          String pass = etPassText.text.toString();
                          print("Email: $email, Pass: $pass");
                        },
                        child: Text("Login"))
                  ],
                ),
              ))),
    );
  }
}
