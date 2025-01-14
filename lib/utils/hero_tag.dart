import 'package:flutter/cupertino.dart';

@immutable
class HeroTag {
  const HeroTag(this.navigator, {this.id});

  final NavigatorState? navigator;
  final String? id; // Add identifier parameter

  @override
  String toString() =>
      'Hero tag for navigation bar $navigator${id != null ? ' id: $id' : ''}';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is HeroTag &&
        other.navigator == navigator &&
        other.id == id; // Include id in equality check
  }

  @override
  int get hashCode => Object.hash(navigator, id); // Include id in hash
}
