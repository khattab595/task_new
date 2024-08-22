import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_business_square/views/widgets/icon_button.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/helper.dart';
import '../../logic/msg_bloc/messages_bloc.dart';
import 'new_txt_f.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({Key? key, required this.hideSend}) : super(key: key);
  final bool hideSend;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOutCubic,
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.only(bottom: 5),
                height: MessagesBloc.of(context).selectedImage != null ? 200 : 0,
                width: Get.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(KHelper.btnRadius),
                  child: MessagesBloc.of(context).selectedImage != null
                      ? Image.file(
                          MessagesBloc.of(context).selectedImage!,
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
              ),
              if (MessagesBloc.of(context).selectedImage != null)
                Positioned(
                  right: 0,
                  child: KIconButton(
                    onPressed: MessagesBloc.of(context).del_img,
                    child: const Icon(Icons.cancel),
                  ),
                )
            ],
          ),
          if (MessagesBloc.of(context).selectedFile != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.file_copy),
                  const SizedBox(width: 10),
                  Expanded(child: Text(MessagesBloc.of(context).selectedFile!.name, overflow: TextOverflow.ellipsis, maxLines: 1)),
                  const SizedBox(width: 8),
                  KIconButton(
                    onPressed: MessagesBloc.of(context).del_file,
                    child: Icon(Icons.cancel, color: KColors.of(context).error),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: KChatTextFormField(
                    hintText: "Message...",
                    expanded: true,
                    keyboardType: TextInputType.text,
                    controller: MessagesBloc.of(context).txtCtrl,
                    filled: true,
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        KIconButton(
                          onPressed: MessagesBloc.of(context).pick_file,
                          child: Icon(Icons.attach_file_rounded, color: Color(0xff004187)),
                        ),
                        KIconButton(
                          onPressed: MessagesBloc.of(context).pick_image,
                          child: Icon(Icons.photo_size_select_actual_outlined, color: Color(0xff004187)),
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                if (hideSend)
                  const SizedBox(width: 48)
                else
                  GestureDetector(
                    onTap: MessagesBloc.of(context).send_msg,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(shape: BoxShape.rectangle, color: Color(0xffF5F6F7), borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.send, color: Color(0xff004187), size: 20),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
