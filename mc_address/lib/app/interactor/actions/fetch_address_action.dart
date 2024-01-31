import 'package:mc_address/app/injector.dart';
import 'package:mc_address/app/interactor/atoms/address_atom.dart';
import 'package:mc_address/app/interactor/repository/address_repository.dart';

Future<void> fetchAddressAction(String cep) async {
  final repository = injector.get<AddressRepository>();
  addressState.value = await repository.fetchAddress(cep);
}
