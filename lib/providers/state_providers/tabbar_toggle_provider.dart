import 'package:hooks_riverpod/hooks_riverpod.dart';

final isOverViewTabProvider = StateProvider<bool>((ref){
  return  true;
});
final isCategoryTabProvider = StateProvider<bool>((ref){
  return  false;
});
final isBudgetTabProvider = StateProvider<bool>((ref){
  return  false;
});