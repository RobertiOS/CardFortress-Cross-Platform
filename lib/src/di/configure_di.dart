import 'package:core/core.dart';
import 'package:data/data.dart' as data;
import 'package:domain/domain.dart' as domain;
import 'package:presentation/presentation.dart' as presentation;

final sl = GetIt.I;

Future<void> configureDependencies() async {
  await data.configureDependencies(sl: sl);
  await domain.configureDependencies(sl: sl);
  await presentation.configureDependencies(sl: sl);
}
