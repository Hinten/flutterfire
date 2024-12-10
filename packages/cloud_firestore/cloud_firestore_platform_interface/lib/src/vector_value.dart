import 'package:flutter/foundation.dart';

/// Represents a vector value by an array of doubles.
@immutable
class VectorValue {
  //Representation of the vector in a firebase document

  final List<double> vector;

  List<double> toArray() => vector;

  const VectorValue(this.vector);

  @override
  bool operator ==(Object other) =>
      other is VectorValue && listEquals(other.vector, vector);

  @override
  int get hashCode => vector.hashCode;

  @override
  String toString() => 'VectorValue(vector: vector<${vector.length}>)';
}
