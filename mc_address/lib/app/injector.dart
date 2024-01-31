import 'package:auto_injector/auto_injector.dart';
import 'package:mc_address/app/data/repository/address_repository.dart';
import 'package:mc_address/app/interactor/repository/address_repository.dart';
import 'package:uno/uno.dart';

final injector = AutoInjector(on: (i) {
  i.addSingleton<Uno>(Uno.new);
  i.addSingleton<AddressRepository>(FetchAddressRepository.new);
});
