import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  DetailProduk(
      {Key key,
      this.nama,
      this.deskripsi,
      this.harga,
      this.image,
      this.star,
      this.lokasi})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String image;
  final int star;
  final String lokasi;
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.star; i++) {
      childrenstar.add(new Icon(
        Icons.star,
        size: 30,
        color: Colors.yellow,
      ));
    }
    return Scaffold(
        appBar: new AppBar(title: new Text("${widget.nama}")),
        body: new Container(
          width: double.infinity,
          child: new ListView(
            children: <Widget>[
              Column(
                children: <Widget>[new Image.asset("assets/" + widget.image)],
              ),
              Container(
                decoration: new BoxDecoration(color: Colors.lightGreen),
                padding: EdgeInsets.all(10),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Row(
                          children: childrenstar,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red[400],
                            ),
                            Text(
                              this.widget.lokasi,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                    new Container(
                      child: new Text("Rp " + this.widget.harga.toString(),
                          style: new TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Simpan ke Keranjang ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.lightGreenAccent,
                width: double.infinity,
                height: double.maxFinite,
                child: new Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Deskripsi Produk :",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Text(
                      widget.deskripsi,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
