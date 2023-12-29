import 'package:flutter/material.dart';

///Main Function
main() {
  runApp(const MyBasicFlutterApp());

  ///First Step Create Application
}

class MyBasicFlutterApp extends StatelessWidget {
  /// Second Step Creating MyApp
  const MyBasicFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Third Step Material Widget
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  /// Fourth Step Creating Home Activity Page
  const HomeActivity({super.key});

  _MySnackBar(mesage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(mesage)));
  }

  _MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text("Alert"),
                content: Text("Do you want  to delet"),
                actions: [
                  TextButton(onPressed: (){
                    _MySnackBar("Delete Success", context);
                    Navigator.of(context).pop();
                  },
                      child: Text("Yes")),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
                ],
              )
          );
        }
    );
  }

  /// Button Style Property

  /// Button Style Property

  @override
  Widget build(BuildContext context) {
    final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
        )

    );

    /// Fifth Step Scaffold Widget Creating
    /// AppBar, Body , BottomNavigation App Whole Activity Design Thing Is hire
    /// All Design Is Here Mind It President

    return Scaffold(

      /// AppBar Worked
      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing: 0,
        toolbarHeight: 50,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                _MySnackBar("Comments", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                _MySnackBar("search", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                _MySnackBar("setting", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                _MySnackBar("email", context);
              },
              icon: Icon(Icons.email)),
        ],
      ),

      /// Floting Action Button
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          _MySnackBar("I'm Floating Action Button", context);
        },
      ),

      ///bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contract"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            _MySnackBar("I'm home bottom menu", context);
          }
          if (index == 1) {
            _MySnackBar("I'm contract bottom menu", context);
          }
          if (index == 2) {
            _MySnackBar("I'm profile bottom menu", context);
          }
        },
      ),

      /// Navigation Drawer
      /// its two part
      /// header and list

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  accountName: Text(
                    "Nahid Hasan",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "president.nahid@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: Image.network(
                      "https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/10/06/10/Cristiano-Ronaldo.jpg"),
                  onDetailsPressed: () {
                    _MySnackBar("This Is My Profile", context);
                  },
                )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                _MySnackBar("Home", context);
              },
            ),
            ListTile(
              title: Text("Contarct"),
              leading: Icon(Icons.contact_mail),
              onTap: () {
                _MySnackBar("Contarct", context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.verified_user),
              onTap: () {
                _MySnackBar("Profile", context);
              },
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email),
              onTap: () {
                _MySnackBar("Email", context);
              },
            ),
            ListTile(
              title: Text("Phone"),
              leading: Icon(Icons.phone),
              onTap: () {
                _MySnackBar("Phone", context);
              },
            ),
          ],
        ),
      ),

      /// Navigation End Drawer

      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  accountName: Text(
                    "Nahid Hasan",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "president.nahid@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: Image.network(
                      "https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/10/06/10/Cristiano-Ronaldo.jpg"),
                  onDetailsPressed: () {
                    _MySnackBar("This Is My Profile", context);
                  },
                )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                _MySnackBar("Home", context);
              },
            ),
            ListTile(
              title: Text("Contarct"),
              leading: Icon(Icons.contact_mail),
              onTap: () {
                _MySnackBar("Contarct", context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.verified_user),
              onTap: () {
                _MySnackBar("Profile", context);
              },
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email),
              onTap: () {
                _MySnackBar("Email", context);
              },
            ),
            ListTile(
              title: Text("Phone"),
              leading: Icon(Icons.phone),
              onTap: () {
                _MySnackBar("Phone", context);
              },
            ),
          ],
        ),
      ),

      /// Body Widget
      /// Container
      /// All design section is here
      /*
      body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        // margin: EdgeInsets.all(30),
        margin:EdgeInsets.all(30) ,
        padding:EdgeInsets.all(60) ,


        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black,width: 6)
        ),
        child: Image.network("https://miro.medium.com/v2/resize:fit:320/1*wWUfWY0hKs3-VR8QNUjklQ.png"),

      ),

     */

      /// Row Widget

      /*   body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100,width: 100,child: Image.network('https://miro.medium.com/v2/resize:fit:320/1*wWUfWY0hKs3-VR8QNUjklQ.png')),
          Container(height: 100,width: 100,child: Image.network('https://miro.medium.com/v2/resize:fit:320/1*wWUfWY0hKs3-VR8QNUjklQ.png')),
          Container(height: 100,width: 100,child: Image.network('https://miro.medium.com/v2/resize:fit:320/1*wWUfWY0hKs3-VR8QNUjklQ.png')),
        ],
      ),

    */

      /// Button, Row, colam Widget

      //
      body: Center(
        child: ElevatedButton(child: Text("Click Me"), onPressed: () {_MyAlertDialog(context);},),
      ),

    );
  }
}
