import 'package:flutter/material.dart';
import 'package:uts/login.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('img/profile.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              'Miftakhul jannah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '21670066',
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 123, 123, 123),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Informatika 5B',
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 132, 132, 132),
              ),
            ),
            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('growlunch@gmail.com '),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('087345287914'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text('Pati. 27-02-2003'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Jl. Arc Distrik, Semarang Utara '),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: const Text("Oke"),
                        )
                      ],
                      title: const Text("Log Out"),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text("Apakah Anda Yakin  Ingin Keluar?"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
