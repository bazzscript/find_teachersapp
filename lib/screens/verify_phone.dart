import 'package:find_teachersapp/widgets/verify_icon.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPhone extends StatefulWidget {
  VerifyPhone({Key? key}) : super(key: key);

  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  String currentText = "-";
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Verify Phone',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 3),
          VerifyIcon(),
          Text(
            'Verify your Number',
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(decoration: TextDecoration.none),
              children: [
                TextSpan(
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  text:
                      'We have sent an Verification Code to verify your number on',
                ),
                TextSpan(
                    text: ' +44 57487 3578 ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                TextSpan(
                  text: 'Change',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Text(
            'Enter the Code below to complete registration',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 10, bottom: 20),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                obscuringCharacter: '*',
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeColor: Colors.transparent,
                  selectedColor: Colors.transparent,
                  selectedFillColor: Colors.transparent,
                  inactiveColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                boxShadows: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Color.fromRGBO(224, 224, 224, 1),
                    blurRadius: 1,
                  )
                ],
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    currentText = value;
                  });
                },
              ),
            ),
          ),
          // SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 30),
            child: Text(
              "Didn't recieve the Code? Resend in 7",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(35)),
              alignment: Alignment.center,
              height: 60,
              width: 300,
              child: Text(
                'Proceed',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
