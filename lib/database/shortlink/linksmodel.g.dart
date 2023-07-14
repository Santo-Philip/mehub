// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linksmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LinkModelAdapter extends TypeAdapter<LinkModel> {
  @override
  final int typeId = 1;

  @override
  LinkModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LinkModel(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LinkModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.rndstr)
      ..writeByte(1)
      ..write(obj.longlink)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.user)
      ..writeByte(4)
      ..write(obj.shortlink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinkModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
