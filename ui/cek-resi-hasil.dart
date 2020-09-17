import 'package:flutter/material.dart';

class CekResiHasil extends StatefulWidget {
  @override
  _CekResiHasilState createState() => _CekResiHasilState();
}

class _CekResiHasilState extends State<CekResiHasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange[600],
        title: Text('Lacak Resi'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 170,
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Asal pengiriman'),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Tujuan pengiriman'),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 170),
            child: ListView.builder(
                padding: EdgeInsets.all(15),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.grey[500],
                              ),
                              width: 50,
                              height: 50,
                            ),
                            index != 2
                                ? Container(
                                    width: 3,
                                    height: 40,
                                    color: Colors.grey[300],
                                  )
                                : Text(''),
                          ],
                        ),
                      ),
                      Flexible(
                          flex: 8,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                                'Diterima dari jember, akan dikirimkan ke jakarta Indonesia'),
                          )),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
