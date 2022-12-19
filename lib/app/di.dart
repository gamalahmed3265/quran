// import 'package:get_it/get_it.dart';
// import 'package:quran/data/data_source/remote.dart';
// import 'package:quran/data/respoitry/respoity.dart';
// import 'package:quran/domain/respoitry/respoity.dart';
// import 'package:quran/domain/use_case/use_case_get_by_num_juz.dart';
// import 'package:quran/presention/controller/home_screen/bloc.dart';

// final instance = GetIt.instance;
// initApp() {
//   instance.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImp());
//   instance.registerLazySingleton<Respoitry>(
//       () => RespoitryImp(instance<RemoteDataSource>()));
//   instance.registerLazySingleton<UseCaseGetByJuz>(
//       () => UseCaseGetByJuz(instance<Respoitry>()));
// }

// initGetByJuz() {
//   if (!GetIt.I.isRegistered<UseCaseGetByJuz>()) {
//     instance.registerFactory<UseCaseGetByJuz>(
//         () => UseCaseGetByJuz(instance<Respoitry>()));

//     instance.registerFactory<GetByJuzBloc>(
//         () => GetByJuzBloc(instance<UseCaseGetByJuz>()));
//   }
// }
