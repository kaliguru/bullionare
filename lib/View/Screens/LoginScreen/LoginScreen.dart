import 'package:bullionare/Utils/Images/ImagesConstrants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool _passwordVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;

  }

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Material(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,


          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageConstrants.LoginUI),fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: size.width,
                  height: size.height /4,
                  decoration: BoxDecoration(

                  ),
                  child: Center(
                    child: Text("GOLD SELL",style: TextStyle(fontSize: 35,color: Colors.white),),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: size.width,
                  height: size.height - (size.height / 4) ,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white70,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/12,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Please Enter a password';

                            }
                            if(value.length < 8)
                            {
                              return 'Please Enter atleast eight Charcter';
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            icon: Icon(Icons.email_outlined,color: Colors.grey,),
                            iconColor: Colors.grey,
                            hintText: 'Email',
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.grey),
                              hintStyle: TextStyle(color: Colors.grey),


                              fillColor: Colors.white70,
                            focusColor: Colors.amber,
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 0.9,color: Colors.grey)),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText:  !_passwordVisible,//This will obscure text dynamically

                          decoration: InputDecoration(
                              filled: true,
                              icon: Icon(Icons.shield_outlined,color: Colors.grey,),
                              iconColor: Colors.grey,
                              hintText: 'Password',
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.grey),
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),

                              fillColor: Colors.white70,
                              focusColor: Colors.amber,
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 0.9,color: Colors.grey)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                          ),
                        ),
                      ),
                      SizedBox(height: 2,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              print("object");
                            },
                            child: Text(
                              "Forget Password?",style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: HexColor("#F99839"),

                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: Center(
                            child: Text("Login",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 25 ),),
                          ),
                        ),
                      )
                    ],

                  )

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
