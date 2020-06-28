import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

class LoginPage extends StatelessWidget {
	@override
	Widget build ( BuildContext context ) {
		return Scaffold95(
        body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network('https://hemmy.xyz/tretror/logo.png',
                  height: 60, fit: BoxFit.fill),
              Container(
                  padding: EdgeInsets.only(top: 40.0),
                  width: 300.0,
                  child: Column(children: <Widget>[
                    Elevation95(
                      type: Elevation95Type.down,
                      child: Container(
                        color: Colors.white,
                        child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Username',
                            ),
                            style: TextStyle(color: Colors.black54)),
                      ),
                    ),
                    Elevation95(
                      type: Elevation95Type.down,
                      child: Container(
                        color: Colors.white,
                        child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                            style: TextStyle(color: Colors.black54)),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: Button95(onTap: () {}, child: Text('Login'))),
                    FlatButton(
                        onPressed: () {},
                        child: Text('Don\'t have an account? Create account.'))
                  ]))
            ]),
        ),
        );
	}
}
