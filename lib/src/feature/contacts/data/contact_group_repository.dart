import 'package:flutter_contacts/flutter_contacts.dart';

abstract interface class IContactsRepository {
  Future<List<Group>> getGroups();
  Future<Group> createGroup(String name);
  Future<void> deleteGroup(Group group);
}

class ContactsRepository implements IContactsRepository {
  @override
  Future<List<Group>> getGroups() => FlutterContacts.getGroups();

  @override
  Future<Group> createGroup(String name) => FlutterContacts.insertGroup(Group(name, name));

  @override
  Future<void> deleteGroup(Group group) => FlutterContacts.deleteGroup(group);
}
