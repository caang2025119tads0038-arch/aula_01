import 'package:aula_01/features/chat/domain/entities/conversa.dart';
import 'package:aula_01/features/chat/infra/data/conversa_repository.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListBloc extends Bloc<ConversaListEvent, ConversaListState> {
  final ConversaRepository conversaRepo = ConversaRepository();
  ConversaListBloc() : super(ConversaListLoading()) {
    on<ConversaListInitialize>((event, emit) async {
      List<Conversa> dados = conversaRepo.conversas;
      if (dados.isNotEmpty) {
        await Future.delayed(Duration(seconds: 5));
        emit(ConversaListSucess(conversas: dados));
      } else {
        await Future.delayed(Duration(seconds: 5));
        emit(ConversaListFailure(msg: 'Algo deu errado...'));
      }
    });

    on<ConversaListDuplicaConversa>((event, emit) async {
      emit(ConversaListLoading());
      await Future.delayed(Duration(seconds: 1));
      conversaRepo.add(event.conversa);
      emit(ConversaListSucess(conversas: conversaRepo.conversas));
    });

    add(ConversaListInitialize());
  }
}
