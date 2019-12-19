// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaseStores on BaseStoresBase, Store {
  final _$isLoadingAtom = Atom(name: 'BaseStoresBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$BaseStoresBaseActionController =
      ActionController(name: 'BaseStoresBase');

  @override
  dynamic testAction(bool value) {
    final _$actionInfo = _$BaseStoresBaseActionController.startAction();
    try {
      return super.testAction(value);
    } finally {
      _$BaseStoresBaseActionController.endAction(_$actionInfo);
    }
  }
}
