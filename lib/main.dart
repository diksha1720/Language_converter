import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Language Converter')),
          backgroundColor: Colors.black,
        ),
        body: askme(),
      ),
    ),
  );
}

class askme extends StatefulWidget {
  @override
  _askmeState createState() => _askmeState();
}

class _askmeState extends State<askme> {
  int imageno=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Container(
              margin: const EdgeInsets.all((5.0)),
              width:300.0,
              height:200.0,
              child: Card(
                elevation: 10.0,
                child: TextFormField(
                  decoration:InputDecoration(
                      contentPadding: EdgeInsets.all(5.0),
                    border:InputBorder.none,
                    hintText:'Type here'
                  )
                ),
              )
            ),
            Container(
                margin: const EdgeInsets.all((5.0)),
                width:200.0,
                height:50.0,
                  child: new DropdownButton<String>(
                    items: <String>['Hindi', 'German', 'French', 'Latin'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    hint:Text('Choose Language')
                  ),
            ),

            Container(
                margin: const EdgeInsets.all((5.0)),
                width:300.0,
                height:200.0,
                child: Card(
                  elevation: 10.0,
                  child:Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                      ),
              ),
            Container(
              width:200.0,
              child: RaisedButton(
                color:Colors.black,
                textColor:Colors.white,
                shape:RoundedRectangleBorder(
                  side:BorderSide(color:Colors.black),
    borderRadius:BorderRadius.circular(10.0),
    ),
                padding:EdgeInsets.all(8.0),
                child:Text('Convert',
        style:TextStyle(
              fontSize:20.0
        )),
                onPressed:(){
                  setState(() {
                  });
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
