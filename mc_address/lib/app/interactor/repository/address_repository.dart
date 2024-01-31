import 'package:mc_address/app/interactor/models/address_model.dart';

abstract class AddressRepository {
  Future<AddressModel> fetchAddress(String cep);
}
