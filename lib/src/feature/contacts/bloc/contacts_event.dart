part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.init() = Init$ContactsEvent;

  const factory ContactsEvent.delete({
    required int index,
  }) = Delete$ContactsEvent;

  const factory ContactsEvent.moveToGroup({
    required int index,
    required int groupId,
  }) = MoveToGroup$ContactsEvent;

  const factory ContactsEvent.createAndMoveToGroup({
    required String name,
    required int index,
  }) = CreateAndMoveToGroup$ContactsEvent;
}
