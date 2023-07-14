import 'dart:developer';

import 'package:floutask_app/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDataBase {
  static connect() async {
    var db = await Db.create(MONGO_DB_URL);
    await db.open();
    var status = db.serverStatus();
    print (status);
    inspect (db);
    var collection = db.collection(COLLECTION_NAME);
    print (await collection.find().toList());
  }
}