import 'package:flutter/material.dart';
import 'about.dart' as about;
import './SemuaDaftar.dart' as SemuaDaftar;
import './pengguna_lain.dart' as PenggunaLain;
import './Promo.dart' as Promo;
import './userprofile.dart' as Profil;
import './notifikasi.dart';
import './message.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen[100],
        appBar: new AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "RUANG LOAK",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Notifikasi();
                  }));
                }),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text(
                  "Anggie Arpin",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail: new Text("anggie.arpin.1@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "https://media-exp1.licdn.com/dms/image/C5603AQHbZKgzo1QAyg/profile-displayphoto-shrink_200_200/0/1612793112343?e=1619049600&v=beta&t=lF-xB5VBzKwcjh9BH_Efp7Uk59YOd95Bczh7ekTPsrw"),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover)),
              ),
              new ListTile(
                leading: new Icon(Icons.person),
                title: new Text("Account"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profil.Profile(
                      nama: "I Gede Anggie Suardika Arpin",
                      pekerjaan: "Mahasiswa",
                      image:
                          "https://media-exp1.licdn.com/dms/image/C5603AQHbZKgzo1QAyg/profile-displayphoto-shrink_200_200/0/1612793112343?e=1619049600&v=beta&t=lF-xB5VBzKwcjh9BH_Efp7Uk59YOd95Bczh7ekTPsrw",
                      lokasi: "Desa Kubutambahan",
                    );
                  }));
                },
              ),
              new ListTile(
                leading: new Icon(Icons.email_outlined),
                title: new Text("Message"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Message();
                  }));
                },
              ),
              new ListTile(
                leading: new Icon(Icons.info_outline),
                title: new Text("About"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return about.About();
                  }));
                },
              ),
            ],
          ),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(40),
            crossAxisSpacing: 25,
            mainAxisSpacing: 40,
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) =>
                          SemuaDaftar.SemuaDaftar()));
                },
                child: Button(
                  image: "assets/1.jpg",
                  nama: "Shopping",
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) => Promo.Promo()));
                },
                child: Button(
                  image: "assets/2.jpg",
                  nama: "Discount",
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) =>
                          PenggunaLain.PenggunaLain()));
                },
                child: Button(
                  image: "assets/3.jpg",
                  nama: "Other User",
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext content) => about.About()));
                },
                child: Button(
                  image: "assets/4.jpg",
                  nama: "About",
                ),
              )
            ]));
  }
}

class Button extends StatelessWidget {
  Button({Key key, this.image, this.nama}) : super(key: key);
  final String image;
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            this.image,
            //width: 75,
          ),
          Text(
            this.nama,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
