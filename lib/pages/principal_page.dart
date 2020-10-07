import 'package:flutter/material.dart';
import 'package:health_pocket_app/classes/appRoutes.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF279989),
        elevation: 0.0,
        title: Text('Página Principal'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFF7BA4DB),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(1.0, 2.0),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.FIRST_CONTENT);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icon-sf.png',
                        width: 50.0,
                        height: 50.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'SAÚDE FÍSICA',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFCD757),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(1.0, 2.0),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.SEC_CONTENT);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icon-sm.png',
                        width: 50.0,
                        height: 50.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'SAÚDE MENTAL',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFFD66965),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(1.0, 2.0),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.THIRD_CONTENT);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/alim.png',
                        width: 50.0,
                        height: 50.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'ALIMENTAÇÃO',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFF79BE70),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(1.0, 2.0),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.FOURTH_CONTENT);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/vir.png',
                        width: 50.0,
                        height: 50.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'CORONAVÍRUS',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
