part of 'contacts_bloc.dart';

sealed class ContactsState {
  final List<Contact> contacts;
  final List<Group> groups;

  final Contact? selectedContact;

  const ContactsState._({
    required this.contacts,
    required this.groups,
    this.selectedContact,
  });

  const factory ContactsState.idle({
    required List<Contact> contacts,
    required List<Group> groups,
    Contact? selectedContact,
  }) = ContactsState$Idle;

  const factory ContactsState.successful({
    required List<Contact> contacts,
    required List<Group> groups,
    Contact? selectedContact,
  }) = ContactsState$Successful;

  const factory ContactsState.error({
    required List<Contact> contacts,
    required List<Group> groups,
    String? message,
    Contact? selectedContact,
  }) = ContactsState$Error;

  const factory ContactsState.processing({
    required List<Contact> contacts,
    required List<Group> groups,
    Contact? selectedContact,
  }) = ContactsState$Processing;
}

class ContactsState$Idle extends ContactsState {
  const ContactsState$Idle({
    required List<Contact> contacts,
    required List<Group> groups,
    Contact? selectedContact,
  }) : super._(
          contacts: contacts,
          groups: groups,
          selectedContact: selectedContact,
        );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactsState$Idle &&
        const DeepCollectionEquality().equals(other.contacts, contacts) &&
        const DeepCollectionEquality().equals(other.groups, groups) &&
        other.selectedContact == selectedContact;
  }

  @override
  int get hashCode => Object.hash(const DeepCollectionEquality().hash(contacts), const DeepCollectionEquality().hash(groups), selectedContact);
}

class ContactsState$Successful extends ContactsState {
  const ContactsState$Successful({
    required List<Contact> contacts,
    required List<Group> groups,
    Contact? selectedContact,
  }) : super._(
          contacts: contacts,
          groups: groups,
          selectedContact: selectedContact,
        );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactsState$Successful &&
        const DeepCollectionEquality().equals(other.contacts, contacts) &&
        const DeepCollectionEquality().equals(other.groups, groups) &&
        other.selectedContact == selectedContact;
  }

  @override
  int get hashCode => Object.hash(const DeepCollectionEquality().hash(contacts), const DeepCollectionEquality().hash(groups), selectedContact);
}

class ContactsState$Error extends ContactsState {
  final String? message;

  const ContactsState$Error({
    required List<Contact> contacts,
    required List<Group> groups,
    this.message,
    Contact? selectedContact,
  }) : super._(
          contacts: contacts,
          groups: groups,
          selectedContact: selectedContact,
        );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactsState$Error &&
        const DeepCollectionEquality().equals(other.contacts, contacts) &&
        const DeepCollectionEquality().equals(other.groups, groups) &&
        other.message == message &&
        other.selectedContact == selectedContact;
  }

  @override
  int get hashCode =>
      Object.hash(const DeepCollectionEquality().hash(contacts), const DeepCollectionEquality().hash(groups), message, selectedContact);
}

class ContactsState$Processing extends ContactsState {
  const ContactsState$Processing({
    required List<Contact> contacts,
    required List<Group> groups,
    Contact? selectedContact,
  }) : super._(
          contacts: contacts,
          groups: groups,
          selectedContact: selectedContact,
        );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactsState$Processing &&
        const DeepCollectionEquality().equals(other.contacts, contacts) &&
        const DeepCollectionEquality().equals(other.groups, groups) &&
        other.selectedContact == selectedContact;
  }

  @override
  int get hashCode => Object.hash(const DeepCollectionEquality().hash(contacts), const DeepCollectionEquality().hash(groups), selectedContact);
}


// @freezed
// class ContactsState with _$ContactsState {
//   const factory ContactsState.idle({
//     required final ContactsStateData data,
//   }) = Idle$ContactsState;

//   const factory ContactsState.processing({
//     required final ContactsStateData data,
//   }) = Processing$ContactsState;

//   const factory ContactsState.successful({
//     required final ContactsStateData data,
//   }) = Successful$ContactsState;

//   const factory ContactsState.error({
//     required final ContactsStateData data,
//     required final String? message,
//   }) = Error$ContactsState;

//   static const ContactsState initialState = ContactsState.idle(
//     data: ContactsStateData(
//       contacts: [],
//       groups: [],
//     ),
//   );
// }

// @freezed
// class ContactsStateData with _$ContactsStateData {
//   const factory ContactsStateData({
//     required final List<Contact> contacts,
//     required final List<Group> groups,
//   }) = _ContactsStateData;

//   const ContactsStateData._();
// }
