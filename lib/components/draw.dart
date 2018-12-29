import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SmartDrawer(
      widthPercent: 0.7,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('header'.toUpperCase()),
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).primaryColor,
            //   ),
            // ),
            Stack(
              alignment: Alignment(0.0, 0.0),
              children: <Widget>[
                Image.asset(
                  'images/drawer_bg.png',
                  fit: BoxFit.cover,
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Theme(
                          data: Theme.of(context).copyWith(
                            buttonTheme: ButtonThemeData(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                            ),
                          ),
                          child: ButtonBar(
                            children: <Widget>[
                              SizedBox(
                                height: 25.0,
                                child: OutlineButton(
                                  child: Text('Login'),
                                  onPressed: () {},
                                  splashColor:
                                      Color.fromRGBO(58, 213, 178, 1.0),
                                  borderSide: BorderSide(color: Colors.white),
                                  textColor: Colors.white,
                                  highlightedBorderColor:
                                      Color.fromRGBO(58, 213, 178, 1.0),
                                ),
                              ),
                              SizedBox(
                                height: 25.0,
                                child: OutlineButton(
                                  child: Text('Register'),
                                  onPressed: () {},
                                  splashColor:
                                      Color.fromRGBO(58, 213, 178, 1.0),
                                  borderSide: BorderSide(color: Colors.white),
                                  textColor: Colors.white,
                                  highlightedBorderColor:
                                      Color.fromRGBO(58, 213, 178, 1.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Balance',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.bookmark,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Reward Task',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.insert_invitation,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Referral Program',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.security,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Security',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.view_agenda,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Authentication',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.settings,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Setting',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Contact US',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.account_circle,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Color.fromRGBO(110, 110, 110, 1.0),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1.0),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(156, 156, 156, 1.0), size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
