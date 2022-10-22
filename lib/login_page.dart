import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // height:MediaQuery.of(context).size.height*0.7,
        children: [
          // SizedBox(height: 150,),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          flutterLogo(),
          SizedBox(height: 20),
          Column(
            children: [
              emailTextField(),
              SizedBox(height: 20),
              passwordTextField(),
              SizedBox(height: 20),
            ],
          ),
          buttonLogin(),
          Spacer(),
          Text("New user? Create account"),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Column buttonLogin() {
    return Column(
      children: [
        textFogetPassword(),
        SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width*0.6,
          height: 50,

          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(50),
          //   color: Colors.blue,
          // ),

          child: ElevatedButton(
            onPressed: () {},
             style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            // primary: Colors.purple
          ),
            child: Text("Login",style: TextStyle(fontSize: 18),),
          ),
        ),
       
      ],
    );
  }

  Text textFogetPassword() {
    return Text(
      "Forgot Password?",
      style: TextStyle(fontSize: 16, color: Colors.blue),
    );
  }

  Container passwordTextField() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "ລະຫັດຜ່ານ",
          suffixIcon: IconButton(
            icon: Icon(
              visible == true ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                visible = !visible;
              });
            },
          ),
          //  hintText: "ປ້ອນລະຫັດຜ່ານ",
          prefixIcon: Icon(Icons.key),
          border: OutlineInputBorder(),
        ),
        obscureText: visible,
      ),
    );
  }

  Container emailTextField() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "ອີເມວ",
          // hintText: "ປ້ອນອີເມວ",
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class flutterLogo extends StatelessWidget {
  const flutterLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "images/imageFlutter.jpeg",
          width: 80,
          height: 80,
        ),
        Text(
          "Flutter",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
}
