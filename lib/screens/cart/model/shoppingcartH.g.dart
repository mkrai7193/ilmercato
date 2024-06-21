// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoppingcartH.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShoppingCartHAdapter extends TypeAdapter<ShoppingCartH> {
  @override
  final int typeId = 0;

  @override
  ShoppingCartH read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShoppingCartH(
      memId: fields[0] as int,
      pSku: fields[1] as String,
      pid: fields[2] as int,
      proName: fields[3] as String,
      proImage: fields[4] as String,
      rate: fields[5] as double,
      quantity: fields[6] as int,
      discount: fields[7] as String,
      brand: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ShoppingCartH obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.memId)
      ..writeByte(1)
      ..write(obj.pSku)
      ..writeByte(2)
      ..write(obj.pid)
      ..writeByte(3)
      ..write(obj.proName)
      ..writeByte(4)
      ..write(obj.proImage)
      ..writeByte(5)
      ..write(obj.rate)
      ..writeByte(6)
      ..write(obj.quantity)
      ..writeByte(7)
      ..write(obj.discount)
      ..writeByte(8)
      ..write(obj.brand);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShoppingCartHAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
