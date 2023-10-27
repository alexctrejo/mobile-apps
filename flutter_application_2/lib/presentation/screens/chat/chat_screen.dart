import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_application_2/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_application_2/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/f1/89/dd/f189dd3b72d305157d2fb5536dcce53a.jpg'),
          ),
        ),
        title: const Text('Trafalgar Law'),
        centerTitle: true,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            //Bandeja de mensajes
            const MessageFieldBox(),
          ], //Children
        ),
      ),
    );
  }
}
