import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_state.freezed.dart';

final localeStatePod =
    StateNotifierProvider<LocaleStateManager, LocaleState>((ref) {
  return LocaleStateManager();
});

// flutter pub run build_runner build --delete-conflicting-outputs
@freezed
class LocaleState with _$LocaleState {
  const factory LocaleState({
    @Default(null) String? code
}) = _LocaleState;

  const LocaleState._();

  Locale? get locale {
    if (code == null) {
      return null;
    }
    return Locale.fromSubtags(languageCode: code!);
  }
}

class LocaleStateManager extends StateNotifier<LocaleState> {
  LocaleStateManager() : super(const LocaleState());

  void changeLocale(String code) => state = state.copyWith(code: code);


  // void func() => state = state.copyWith();
}
