import 'package:flutter/material.dart';
import 'about.dart' as about;
import './SemuaDaftar.dart' as SemuaDaftar;
import './pengguna_lain.dart' as PenggunaLain;
import './Promo.dart' as Promo;
import './userprofile.dart' as Profil;
import 'package:ruang_loak/ui/home.dart';
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
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
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
              leading: new Icon(Icons.add_shopping_cart_sharp),
              title: new Text("Jual Barang"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
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
    );
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
