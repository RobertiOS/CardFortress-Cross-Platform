import 'package:core/core.dart';
import 'package:data/data.dart' as data;
import 'package:domain/domain.dart' as domain;

final sl = GetIt.I;

Future<void> configureDependencies() async {
   await data.configureDependencies(sl: sl);
  await domain.configureDependencies(sl: sl);
}
