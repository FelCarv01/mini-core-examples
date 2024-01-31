import 'package:flutter_test/flutter_test.dart';
import 'package:mc_address/app/injector.dart';
import 'package:mc_address/app/interactor/actions/fetch_address_action.dart';
import 'package:mc_address/app/interactor/atoms/address_atom.dart';
import 'package:mc_address/app/interactor/models/address_model.dart';
import 'package:mc_address/app/interactor/repository/address_repository.dart';
import 'package:mocktail/mocktail.dart';

class AddressRepositoryMock extends Mock implements AddressRepository {}

void main() {
  test('should fetch address', () async {
    const cep = "75904370";
    final model = AddressModel.empty();
    final repository = AddressRepositoryMock();
    when(() => repository.fetchAddress(cep))
        .thenAnswer((invocation) => Future.value(model));
    injector.replaceInstance<AddressRepository>(repository);

    final result = fetchAddressAction(cep);

    expect(addressState.next(), completion(model));
    expect(result, completes);
  });
}
