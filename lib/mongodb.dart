//##############################
// my app with flutter
// mrbacco 2022
// mongodb.dart: connection to database
//###################################

//IMPORT LIBRARIES START
import 'package:mongo_dart/mongo_dart.dart';
import 'package:async/async.dart';

//IMPORT LIBRARIES END




void main() async {
  var db = await Db.create("mongodb+srv://mrbacco:mongodb001@cluster0.goutv.mongodb.net/test?authSource=admin&replicaSet=Cluster0-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true");
  await db.open();
  // await db.drop();
  print('connecting to database');

  var collection = db.collection('test');
  var coll = "${collection}";
  print("connecting to the collection named " + coll);
  await collection.insertMany([
    {
      'name': 'William Shakespeare',
      'email': 'william@shakespeare.com',
      'age': 587
    },
    {
      'name': 'Ziokkan',
      'email': 'zio@ziokkan.com',
      'age': 99877
    },
  ]);
  await collection.find(where.sortBy('age')).forEach(
          (auth) => print("[${auth['name']}]:[${auth['email']}]:[${auth['age']}]"));

}

