import 'package:collection/collection.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

abstract interface class IContactsRepository {
  // --- Contacts --- //
  Future<List<Contact>> getContacts();
  Future<void> deleteContact(Contact contact);
  Future<void> moveToGroup(String contactId, String groupId);
}

class ContactsRepository implements IContactsRepository {
  @override
  Future<List<Contact>> getContacts() async {
    return await FlutterContacts.getContacts();
  }

  @override
  Future<void> deleteContact(Contact contact) async {
    await FlutterContacts.deleteContact(contact);
  }

  @override
  Future<Contact?> moveToGroup(String contactId, String groupId) async {
    final contact = await FlutterContacts.openExternalEdit(contactId);

    if (contact == null) throw Exception('Contact not found');

    final contactGroups = contact.groups;
    final alreadyInGroup = contactGroups.any((element) => element.id == groupId);

    if (alreadyInGroup == true) throw Exception('Contact already in group');

    final groups = await FlutterContacts.getGroups();
    final group = groups.firstWhereOrNull((element) => element.id == groupId);

    if (group == null) throw Exception('Group not found');

    contact.groups.add(group);

    return await contact.update();
  }
}
