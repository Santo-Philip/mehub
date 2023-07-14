import 'package:hive_flutter/hive_flutter.dart';

part 'linksmodel.g.dart';

@HiveType(typeId: 1)
class LinkModel extends HiveObject {
  @HiveField(0)
  late String rndstr;
  @HiveField(1)
  late String longlink;
  @HiveField(2)
  late String date;
  @HiveField(3)
  late String user;
  @HiveField(4)
  late String shortlink;

  LinkModel(this.rndstr,this.longlink,this.date,this.user,this.shortlink);

}