import 'package:equatable/equatable.dart';
// обработка ошибок
abstract class Failure extends Equatable {

  @override
  List<Object> get props => [];
}
// полностью соответсвует файлу exception
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}