import 'dart:developer';

import 'package:floutask_app/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


class MongoDataBase {
  static connect() async {
    await dotenv.load();
    var db = await Db.create(dotenv.env["MONGO_URL"]!!);
    await db.open();
    var status = db.serverStatus();
    print (status);
    inspect (db);
    var collection = db.collection(COLLECTION_NAME);
    print (await collection.find().toList());
  }
}