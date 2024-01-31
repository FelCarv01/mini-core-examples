import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uno/uno.dart';

import '../../interactor/models/address_model.dart';
import '../../interactor/repository/address_repository.dart';

class FetchAddressRepository implements AddressRepository {
  final Uno uno;

  FetchAddressRepository({required this.uno});

  @override
  Future<AddressModel> fetchAddress(String cep) async {
    try {
      final response = await uno.get('https://viacep.com.br/ws/$cep/json/');
      await Future.delayed(const Duration(seconds: 1));
      if (response.status == 200) {
        final jsonDecoded = json.decode(response.data);
        return AddressModel.fromJson(jsonDecoded);
      }
    } catch (e) {
      debugPrint(e.toString());
      throw Exception('Não foi possível buscar o endereço');
    }
    return AddressModel.empty();
  }
}
