import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String name;
  final String url;

  const Location({
    required this.name,
    required this.url,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [name, url];
}
