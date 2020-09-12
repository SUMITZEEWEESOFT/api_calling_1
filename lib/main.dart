import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import './homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();



}

class _MyAppState extends State<MyApp> {


  @override


  void initState() {
    // TODO: implement initState
    super.initState();

  }
  var url = 'http://13.127.115.26:8080/web/get_category';
  var id0,id1,id2,id3,id4,id5,id6,id7;
  var title0,title1,title2,title3,title4,title5,title6,title7;
  var img0,img1,img2,img3,img4,img5,img6,img7;
  void getData() async{
    http.Response res = await http.get(url);
    print(res.statusCode);
    if(res.statusCode==200)
    { String data = res.body;
    //print(data);data[0].categoryStatus
    print('start');
//    sData(data);
    id0 = convert.jsonDecode(data)['data'][0]['_id'];
     id1 = convert.jsonDecode(data)['data'][1]['_id'];
    id2 = convert.jsonDecode(data)['data'][2]['_id'];
    id3 = convert.jsonDecode(data)['data'][3]['_id'];
    id4 = convert.jsonDecode(data)['data'][4]['_id'];
  id5 = convert.jsonDecode(data)['data'][5]['_id'];
   id6 = convert.jsonDecode(data)['data'][6]['_id'];
     id7 = convert.jsonDecode(data)['data'][7]['_id'];

  title0 = convert.jsonDecode(data)['data'][0]['categoryName'];
     title1= convert.jsonDecode(data)['data'][1]['categoryName'];
     title2 = convert.jsonDecode(data)['data'][2]['categoryName'];
    title3 = convert.jsonDecode(data)['data'][3]['categoryName'];
    title4 = convert.jsonDecode(data)['data'][4]['categoryName'];
     title5 = convert.jsonDecode(data)['data'][5]['categoryName'];
     title6 = convert.jsonDecode(data)['data'][6]['categoryName'];
     title7 = convert.jsonDecode(data)['data'][7]['categoryName'];


     img0 = convert.jsonDecode(data)['data'][0]['categoryImage'];
     img1 = convert.jsonDecode(data)['data'][1]['categoryImage'];
     img2 = convert.jsonDecode(data)['data'][2]['categoryImage'];
     img3 = convert.jsonDecode(data)['data'][3]['categoryImage'];
     img4 = convert.jsonDecode(data)['data'][4]['categoryImage'];
     img5 = convert.jsonDecode(data)['data'][5]['categoryImage'];
     img6 = convert.jsonDecode(data)['data'][6]['categoryImage'];
     img7 = convert.jsonDecode(data)['data'][7]['categoryImage'];
    }else{print(res.statusCode);}

  }





  Widget build(BuildContext context) {
    getData();
//    void sData(String data){
//      var id0 = convert.jsonDecode(data)['data'][0]['_id'];
//      var id1 = convert.jsonDecode(data)['data'][1]['_id'];
//      var id2 = convert.jsonDecode(data)['data'][2]['_id'];
//      var id3 = convert.jsonDecode(data)['data'][3]['_id'];
//      var id4 = convert.jsonDecode(data)['data'][4]['_id'];
//      var id5 = convert.jsonDecode(data)['data'][5]['_id'];
//      var id6 = convert.jsonDecode(data)['data'][6]['_id'];
//      var id7 = convert.jsonDecode(data)['data'][7]['_id'];
//
//      var title0 = convert.jsonDecode(data)['data'][0]['categoryName'];
//      var title1= convert.jsonDecode(data)['data'][1]['categoryName'];
//      var title2 = convert.jsonDecode(data)['data'][2]['categoryName'];
//      var title3 = convert.jsonDecode(data)['data'][3]['categoryName'];
//      var title4 = convert.jsonDecode(data)['data'][4]['categoryName'];
//      var title5 = convert.jsonDecode(data)['data'][5]['categoryName'];
//      var title6 = convert.jsonDecode(data)['data'][6]['categoryName'];
//      var title7 = convert.jsonDecode(data)['data'][7]['categoryName'];
//
//
//      var img0 = convert.jsonDecode(data)['data'][0]['categoryImage'];
//      var img1 = convert.jsonDecode(data)['data'][1]['categoryImage'];
//      var img2 = convert.jsonDecode(data)['data'][2]['categoryImage'];
//      var img3 = convert.jsonDecode(data)['data'][3]['categoryImage'];
//      var img4 = convert.jsonDecode(data)['data'][4]['categoryImage'];
//      var img5 = convert.jsonDecode(data)['data'][5]['categoryImage'];
//      var img6 = convert.jsonDecode(data)['data'][6]['categoryImage'];
//      var img7 = convert.jsonDecode(data)['data'][7]['categoryImage'];
//    }

    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(),
        body:Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    ListTile(

                        title: Text('Name : $title0 '),
                        subtitle : Text('Id: $id0'),

                      leading: CircleAvatar(backgroundImage:  NetworkImage(img0) ,backgroundColor: Colors.white,) ,
                      onTap: () async {
                        await showDialog(
                            context: context,
                            builder: (_) => ImageDialog(img0),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Name : $title1 '),
                      subtitle : Text('Id: $id1'),
                      leading: CircleAvatar(backgroundImage:  NetworkImage(img1) ,backgroundColor: Colors.white) ,
                    ),
                    ListTile(
                      title: Text('Name : $title2 '),
                      subtitle : Text('Id: $id2'),
                      leading: CircleAvatar(backgroundImage:  NetworkImage(img2) ,backgroundColor: Colors.white) ,
                    ),
                    ListTile(
                      title: Text('Name : $title3 '),
                      subtitle : Text('Id: $id3'),
                      leading: CircleAvatar(backgroundImage:  NetworkImage(img3) ,backgroundColor: Colors.white) ,
                    ),
                    ListTile(
                      title: Text('Name : $title4 '),
                      subtitle : Text('Id: $id4'),
                      leading: CircleAvatar(backgroundImage:  NetworkImage(img4) ,backgroundColor: Colors.white) ,
                    ),
                    ListTile(
                      title: Text('Name : $title5 '),
                      subtitle : Text('Id: $id5'),
                      leading: CircleAvatar(backgroundImage:  NetworkImage(img5) ,backgroundColor: Colors.white) ,
                    ),
                    ListTile(
                      title: Text('Name : $title6 '),
                      subtitle : Text('Id: $id6'),
                      leading: CircleAvatar(backgroundImage:  NetworkImage(img6) ,backgroundColor: Colors.white) ,
                    ),
                    ListTile(
                      title: Text('Name : $title7 '),
                      subtitle : Text('Id: $id7'),
                      leading: CircleAvatar(backgroundImage:  NetworkImage(img7) ,backgroundColor: Colors.white) ,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )


    ),);
  }







}
class ImageDialog extends StatelessWidget {
  final String img ;
  ImageDialog(this.img);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }}