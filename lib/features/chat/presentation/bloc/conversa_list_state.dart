import 'package:aula_01/features/chat/domain/entities/conversa.dart';

sealed class ConversaListState {}

class ConversaListLoading extends ConversaListState {}

class ConversaListSucess extends ConversaListState {
  final List<Conversa> conversas;
  ConversaListSucess({required this.conversas});
}

class ConversaListFailure extends ConversaListState {
  final String msg;
  ConversaListFailure({required this.msg});
}
