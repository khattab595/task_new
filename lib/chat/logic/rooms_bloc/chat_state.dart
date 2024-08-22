import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/chat/data/models/chat_model.dart';
part 'chat_state.freezed.dart';

@freezed
class ChatRoomsState with _$ChatRoomsState {
  const factory ChatRoomsState.loading() = ChatRoomsStateLoading;
  const factory ChatRoomsState.initial() = ChatRoomsStateInitial;
  const factory ChatRoomsState.success() = ChatRoomsStateSuccess;
  const factory ChatRoomsState.error({required String error}) = ChatRoomsStateError;
  const factory ChatRoomsState.newMessage(SendMsgModel msgModel) = ChatRoomsStateNewMessage;
}
// flutter pub run build_runner watch --delete-conflicting-outputs