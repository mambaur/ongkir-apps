import 'package:cekongkir_apps/ui/cek-resi-hasil.dart';
import 'package:flutter/material.dart';

class CekResi extends StatefulWidget {
  @override
  _CekResiState createState() => _CekResiState();
}

class _CekResiState extends State<CekResi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange[600],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: SafeArea(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: FlatButton(
                                    onPressed: () {},
                                    child: Icon(Icons.arrow_back,
                                        size: 25, color: Colors.white)),
                              ),
                              Text('Cek Resi',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18)),
                              Container(
                                width: 60,
                                height: 60,
                                child: FlatButton(
                                    onPressed: () {},
                                    child: Icon(Icons.dashboard,
                                        size: 25, color: Colors.white)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Melacak Pengiriman Barang Anda',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Mohon masukkan nomor resi.',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        // fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 50,
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text('Nomor Resi Anda',
                                        style: TextStyle(
                                            color: Colors.grey[400]))),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 50,
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text('Pilih Kurir',
                                        style: TextStyle(
                                            color: Colors.grey[400]))),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.orange[300],
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CekResiHasil()));
                                        },
                                        splashColor: Colors.grey[700],
                                        borderRadius: BorderRadius.circular(25),
                                        child: Container(
                                          height: 50,
                                          width: 200,
                                          alignment: Alignment.center,
                                          child: Text('Cek Resi',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Container(
                  padding: EdgeInsets.only(left: 15, top: 17),
                  child: Text('Our Service',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                          fontWeight: FontWeight.w600))),
              Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 17),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                        Service(
                          title: 'Kurir',
                          subtitle: 'Jumlah kurir',
                        ),
                        SizedBox(width: 10),
                        Service(
                          title: 'Cek Ongkir',
                          subtitle: 'Biaya ongkir',
                        ),
                        SizedBox(width: 10),
                        Service(
                          title: 'Bantuan',
                          subtitle: 'Info ongkir',
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class Service extends StatelessWidget {
  final String title;
  final String subtitle;
  const Service({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey[200]),
      child: Column(
        children: <Widget>[
          Container(
            height: 85,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(100)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style:
                TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w600),
          ),
          Text(subtitle,
              style: TextStyle(color: Colors.grey[400], fontSize: 12))
        ],
      ),
    ));
  }
}
