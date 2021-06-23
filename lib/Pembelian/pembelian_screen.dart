import 'package:flutter/material.dart';
import 'package:ruang_loak/Pembelian/service.dart';

import 'package:ruang_loak/Pembelian/Pembelian.dart';

class TampilanPenawaran extends StatefulWidget {
  @override
  _TampilanPenawaranState createState() => _TampilanPenawaranState();
}

class _TampilanPenawaranState extends State<TampilanPenawaran> {
  var _pembelian = Pembelian();
  var pembelian;
  var _pembelianService = PembelianService();
  var _PembelianNameController = TextEditingController();
  var _PembelianLokasiController = TextEditingController();
  var _PembelianPenawaranController = TextEditingController();
  // ignore: deprecated_member_use
  List<Pembelian> _pembelianList = List<Pembelian>();
  @override
  void initState() {
    super.initState();
    getAllPembelian();
  }

  getAllPembelian() async {
    // ignore: deprecated_member_use
    _pembelianList = List<Pembelian>();
    var pembelians = await _pembelianService.readPembelian();
    pembelians.forEach((pembelian) {
      setState(() {
        var _pembelianModel = Pembelian();
        _pembelianModel.namabrg = pembelian['namabrg'];
        _pembelianModel.lokasi = pembelian['lokasi'];
        _pembelianModel.penawaran = pembelian['penawaran'];
        _pembelianModel.id = pembelian['id'];
        _pembelianList.add(_pembelianModel);
      });
    });
  }

  // ignore: non_constant_identifier_names
  editPembelian(BuildContext, pembelianId) async {
    pembelian = await _pembelianService.readPembelianById(pembelianId);
    setState(() {
      _PembelianNameController.text =
          pembelian[0]['namabrg'] ?? 'Tidak ada namabrg';
      _PembelianLokasiController.text =
          pembelian[0]['lokasis'] ?? 'Tidak ada lokasi';
      _PembelianPenawaranController.text =
          pembelian[0]['penawaran'] ?? 'Tidak ada Penawaran';
    });
    editdialog(context);
  }

  editdialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                    color: Colors.red,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                    color: Colors.blue,
                    child: TextButton(
                        onPressed: () async {
                          _pembelian.id = pembelian[0]['id'];
                          _pembelian.namabrg = _PembelianNameController.text;
                          _pembelian.lokasi = _PembelianLokasiController.text;
                          _pembelian.penawaran =
                              _PembelianPenawaranController.text;

                          var result = await _pembelianService
                              .updatePembelian(_pembelian);
                          if (result > 0) {
                            Navigator.pop(context);
                            getAllPembelian();
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            ],
            title: Text('Edit Pembelian'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _PembelianNameController,
                    decoration: InputDecoration(
                        hintText: "Name barang", labelText: "Name"),
                  ),
                  TextField(
                    controller: _PembelianLokasiController,
                    decoration: InputDecoration(
                        hintText: 'Lokasi', labelText: 'Lokasi'),
                  ),
                  TextField(
                    controller: _PembelianPenawaranController,
                    decoration: InputDecoration(
                        hintText: 'Penawran', labelText: 'Penawaran'),
                  )
                ],
              ),
            ),
          );
        });
  }

  deletedialog(BuildContext context, pembelianId) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                    color: Colors.blue,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                    color: Colors.red,
                    child: TextButton(
                        onPressed: () async {
                          var result = await _pembelianService
                              .deletePembelian(pembelianId);
                          if (result > 0) {
                            Navigator.pop(context);
                            getAllPembelian();
                          }
                        },
                        child: Text(
                          'Delete',
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            ],
            title: Text('Are you sure to delete this ?'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penawaran'),
      ),

      body: ListView.builder(
          itemCount: _pembelianList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: ListTile(
                    leading: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          editPembelian(BuildContext, _pembelianList[index].id);
                        }),
                    title: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(_pembelianList[index].namabrg),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                deletedialog(context, _pembelianList[index].id);
                              })
                        ],
                      ),
                    ),
                    subtitle: Column(
                      children: [
                        Text(_pembelianList[index].penawaran),
                        Text(_pembelianList[index].lokasi),
                      ],
                    )),
              ),
            );
          }),
    );
  }
}


