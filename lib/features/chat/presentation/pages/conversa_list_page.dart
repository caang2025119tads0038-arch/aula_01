import 'package:aula_01/features/chat/domain/entities/conversa.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_bloc.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListPage extends StatelessWidget {
  const ConversaListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ConversaListBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('Conversas')),
        body: BlocBuilder<ConversaListBloc, ConversaListState>(
          builder: (context, state) {
            if (state is ConversaListSucess) {
              return ListView.builder(
                itemCount: state.conversas.length,
                itemBuilder: (BuildContext context, int i) {
                  Conversa conversa = state.conversas[i];
                  return ListTile(
                    onTap: () {
                      context.read<ConversaListBloc>().add(
                        ConversaListDuplicaConversa(conversa: conversa),
                      );
                    },
                    title: Text(conversa.contato),
                    subtitle: Text(conversa.ultimaMsg),
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      child: Text(conversa.sigla),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(conversa.hora),
                        conversa.naoLidas > 0
                            ? Badge(label: Text('${conversa.naoLidas}'))
                            : SizedBox(),
                      ],
                    ),
                  );
                },
              );
            }

            if (state is ConversaListLoading) {}

            if (state is ConversaListFailure) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Center(child: Text(state.msg))],
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Center(child: CircularProgressIndicator())],
            );
          },
        ),
      ),
    );
  }
}
