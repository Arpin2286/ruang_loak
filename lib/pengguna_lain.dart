import 'package:flutter/material.dart';
import './userprofile.dart';

class PenggunaLain extends StatefulWidget {
  @override
  _PenggunaLainState createState() => _PenggunaLainState();
}

class _PenggunaLainState extends State<PenggunaLain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengguna Lainnya"),
      ),
      body: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Ray Sutha",
                          pekerjaan: "Sales Motor Vespa",
                          image:
                              "https://scontent.fsub8-1.fna.fbcdn.net/v/t1.0-9/158825774_5362976317076436_3773560689362417191_o.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGIuxnQS21K9OP3VfdnaJTfXXDKsc8NRGVdcMqxzw1EZbqgiCVgwSqvPSAvxR0bVpEOq9cgairm68uBzLMLyIHd&_nc_ohc=I272Uq8i5UYAX9AhlDO&_nc_ht=scontent.fsub8-1.fna&oh=c373acade24dbbd693a30cf657574594&oe=6073E9A3",
                          lokasi: "Desa Busungbiu",
                        )),
              );
            },
            child: Pengguna(
              nama: "Ray Sutha",
              pekerjaan: "Sales Motor Vespa",
              image:
                  "https://scontent.fsub8-1.fna.fbcdn.net/v/t1.0-9/158825774_5362976317076436_3773560689362417191_o.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGIuxnQS21K9OP3VfdnaJTfXXDKsc8NRGVdcMqxzw1EZbqgiCVgwSqvPSAvxR0bVpEOq9cgairm68uBzLMLyIHd&_nc_ohc=I272Uq8i5UYAX9AhlDO&_nc_ht=scontent.fsub8-1.fna&oh=c373acade24dbbd693a30cf657574594&oe=6073E9A3",
              lokasi: "Desa Busungbiu",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Guz Mang Agastya",
                          pekerjaan: "Mahasiswa",
                          image:
                              "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/158917281_2915896518643233_4547816479487008025_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGc9GebrpsyfHRqLMUBG1YXQgmqWU403oBCCapZTjTegEdonqQr7C3EWEsnxNhdrDRjzPtNOyyXApDluAIDEj_p&_nc_ohc=wVdivriOHj8AX-rFlHo&_nc_ht=scontent-sin6-1.xx&oh=b217d4377ba68e1db02e99d788de1eb6&oe=607477A1",
                          lokasi: "Desa Bungkulan",
                        )),
              );
            },
            child: Pengguna(
              nama: "Guz Mang Agastya",
              pekerjaan: "Mahasiswa",
              image:
                  "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/158917281_2915896518643233_4547816479487008025_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGc9GebrpsyfHRqLMUBG1YXQgmqWU403oBCCapZTjTegEdonqQr7C3EWEsnxNhdrDRjzPtNOyyXApDluAIDEj_p&_nc_ohc=wVdivriOHj8AX-rFlHo&_nc_ht=scontent-sin6-1.xx&oh=b217d4377ba68e1db02e99d788de1eb6&oe=607477A1",
              lokasi: "Desa Bungkulan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                        nama: "Wahyu Cahyadi",
                        pekerjaan: "Seniman",
                        image:
                            "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-1/p320x320/140271785_2415531241927110_2464469217403947650_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeHtZrrBvaHk3sbb-nc47Uxi_zpthehhLZf_Om2F6GEtlxuBxM5jVu2Ebvhn10MkJJL3McZoM0-J7GAbMfOgBuNm&_nc_ohc=fTi8TuuUiCIAX_mUL1u&_nc_ht=scontent-sin6-2.xx&tp=6&oh=f2c797421fa9bd47e78b92fb21d79ab7&oe=607513C9",
                        lokasi: "Desa Bungkulan")),
              );
            },
            child: Pengguna(
              nama: "Wahyu Cahyadi",
              pekerjaan: "Seniman",
              image:
                  "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-1/p320x320/140271785_2415531241927110_2464469217403947650_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeHtZrrBvaHk3sbb-nc47Uxi_zpthehhLZf_Om2F6GEtlxuBxM5jVu2Ebvhn10MkJJL3McZoM0-J7GAbMfOgBuNm&_nc_ohc=fTi8TuuUiCIAX_mUL1u&_nc_ht=scontent-sin6-2.xx&tp=6&oh=f2c797421fa9bd47e78b92fb21d79ab7&oe=607513C9",
              lokasi: "Desa Bungkulan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                        nama: "Guz Rizky",
                        pekerjaan: "Tentara TNI-AL",
                        image:
                            "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/118794564_1644471712397289_7266511913210369531_o.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFgDLIu_DrWo9xlxjz8Q-ULX2JKWX8KX9BfYkpZfwpf0BVUVBGkRVERVPgOXO6zs7OERmis5kon9cIokqTwl3X5&_nc_ohc=HS255JBSgWIAX-Wzk11&_nc_ht=scontent-sin6-1.xx&oh=9d43f5bdea6eecd059fbce2c8c186e6a&oe=6076DC73",
                        lokasi: "Desa Sukasada")),
              );
            },
            child: Pengguna(
              nama: "Guz Rizky",
              pekerjaan: "Tentara TNI-AL",
              image:
                  "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/118794564_1644471712397289_7266511913210369531_o.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeFgDLIu_DrWo9xlxjz8Q-ULX2JKWX8KX9BfYkpZfwpf0BVUVBGkRVERVPgOXO6zs7OERmis5kon9cIokqTwl3X5&_nc_ohc=HS255JBSgWIAX-Wzk11&_nc_ht=scontent-sin6-1.xx&oh=9d43f5bdea6eecd059fbce2c8c186e6a&oe=6076DC73",
              lokasi: "Desa Sukasada",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                        nama: "Irfan Walhidayah",
                        pekerjaan: "Mahasiswa",
                        image:
                            "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-1/s320x320/145199011_2339442796201781_4833103902886051727_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeGe3cUXO6tWSz4SeEhfYlegq8Emn7keRE-rwSafuR5ET2bxLgFvs_KTY0XcImtISaoRZFN175Io2bzKWnaHFoBi&_nc_ohc=bOGV4Moa50wAX8gj906&_nc_ht=scontent-sin6-2.xx&tp=7&oh=b54976554e2e358bf09503fbaa17ac0d&oe=6074B0E2",
                        lokasi: "Kota Medan")),
              );
            },
            child: Pengguna(
              nama: "Irfan Walhidayah",
              pekerjaan: "Mahasiswa",
              image:
                  "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-1/s320x320/145199011_2339442796201781_4833103902886051727_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeGe3cUXO6tWSz4SeEhfYlegq8Emn7keRE-rwSafuR5ET2bxLgFvs_KTY0XcImtISaoRZFN175Io2bzKWnaHFoBi&_nc_ohc=bOGV4Moa50wAX8gj906&_nc_ht=scontent-sin6-2.xx&tp=7&oh=b54976554e2e358bf09503fbaa17ac0d&oe=6074B0E2",
              lokasi: "Kota Medan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Arpin Rarekual",
                          pekerjaan: "Seniman",
                          image:
                              "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/90254645_263012264711647_469275093197914112_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeG7GPKi2EePgU7xu1ia9nJTuR_9hpy1M-q5H_2GnLUz6sIVl6frzxL6JKfhy7hGcHyvcncMmFYy3VYFAADD-qyl&_nc_ohc=RSN8ls-tfAgAX-8k4Mp&_nc_ht=scontent-sin6-2.xx&oh=c8cdac669bd68fcba189c2dedc24aba1&oe=607580BB",
                          lokasi: "Desa Kubutambahan",
                        )),
              );
            },
            child: Pengguna(
              nama: "Arpin Rarekual",
              pekerjaan: "Seniman",
              image:
                  "https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/90254645_263012264711647_469275093197914112_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeG7GPKi2EePgU7xu1ia9nJTuR_9hpy1M-q5H_2GnLUz6sIVl6frzxL6JKfhy7hGcHyvcncMmFYy3VYFAADD-qyl&_nc_ohc=RSN8ls-tfAgAX-8k4Mp&_nc_ht=scontent-sin6-2.xx&oh=c8cdac669bd68fcba189c2dedc24aba1&oe=607580BB",
              lokasi: "Desa Kubutambahan",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Wahyu Awan Sunarwan",
                          pekerjaan: "Seniman",
                          image:
                              "https://scontent.fsub8-1.fna.fbcdn.net/v/t1.0-9/135121886_10218536741994233_1793397217476412489_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHUVYpW3VTIkE7Tqy-3q38vzFNSDlgQIybMU1IOWBAjJh0qBVZvJKb51EfoFx_klxj25mx06atIr6N1Io8_53uT&_nc_ohc=w6goTwT1E5IAX9lKQgn&_nc_ht=scontent.fsub8-1.fna&oh=eee2659a09bb6e20f8efbc8c51af197b&oe=6074934C",
                          lokasi: "Kota Singaraja",
                        )),
              );
            },
            child: Pengguna(
              nama: "Wahyu Awan Sunarwan",
              pekerjaan: "Seniman",
              image:
                  "https://scontent.fsub8-1.fna.fbcdn.net/v/t1.0-9/135121886_10218536741994233_1793397217476412489_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHUVYpW3VTIkE7Tqy-3q38vzFNSDlgQIybMU1IOWBAjJh0qBVZvJKb51EfoFx_klxj25mx06atIr6N1Io8_53uT&_nc_ohc=w6goTwT1E5IAX9lKQgn&_nc_ht=scontent.fsub8-1.fna&oh=eee2659a09bb6e20f8efbc8c51af197b&oe=6074934C",
              lokasi: "Kota Singaraja",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => Profile(
                          nama: "Dharma Beritz",
                          pekerjaan: "Mekanik",
                          image:
                              "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-1/p320x320/138717994_685103015502095_7609637854418745823_o.jpg?_nc_cat=111&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeFGvNuH1D2CkAcj3NQ5lCAaABxKOz6yIIEAHEo7PrIggapc1llch6u5mSWoO9LqUX1n9PY5n5uYoARfUAdHMh-a&_nc_ohc=CatavOwg0RoAX87dFC2&_nc_ht=scontent-sin6-1.xx&tp=6&oh=9208335563e30d574132538f0cfb925c&oe=60757686",
                          lokasi: "Kelurahan Banyuning Barat",
                        )),
              );
            },
            child: Pengguna(
              nama: "Dharma Beritz",
              pekerjaan: "Mekanik",
              image:
                  "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-1/p320x320/138717994_685103015502095_7609637854418745823_o.jpg?_nc_cat=111&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeFGvNuH1D2CkAcj3NQ5lCAaABxKOz6yIIEAHEo7PrIggapc1llch6u5mSWoO9LqUX1n9PY5n5uYoARfUAdHMh-a&_nc_ohc=CatavOwg0RoAX87dFC2&_nc_ht=scontent-sin6-1.xx&tp=6&oh=9208335563e30d574132538f0cfb925c&oe=60757686",
              lokasi: "Kelurahan Banyuning Barat",
            ),
          ),
        ],
      ),
    );
  }
}

class Pengguna extends StatelessWidget {
  Pengguna({Key key, this.nama, this.pekerjaan, this.image, this.lokasi})
      : super(key: key);
  final String nama;
  final String pekerjaan;
  final String image;
  final String lokasi;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: new CircleAvatar(
              backgroundImage: NetworkImage(this.image),
              radius: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.nama, //untuk nama
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                this.pekerjaan,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                this.lokasi,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
