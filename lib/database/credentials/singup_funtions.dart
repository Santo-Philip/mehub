import 'package:hive_flutter/hive_flutter.dart';
import 'package:mehub/database/credentials/signup_models.dart';


class SignUpFunctions {
  String hiveBox = 'signup';

  // Create User
  Future<void> addUser(SignUpModel signupModel) async {
    var box = await Hive.openBox(hiveBox);
    await box.add(signupModel);
    Hive.close();
  }

  // Reading all users data
  Future<List<SignUpModel>> getAll() async {
    var box = await Hive.openBox(hiveBox);
    List<SignUpModel> users = [];

    for (int i = 0; i < box.length; i++) {
      var user = box.getAt(i) as SignUpModel;
      users.add(user);
    }
    return users;
  }

  // Update a user's value
  Future<void> updateUser(String username, String newValue) async {
    var box = await Hive.openBox(hiveBox);

    final index =
        box.values.toList().indexWhere((item) => item.username == username);
    if (index != -1) {
      SignUpModel user = box.getAt(index) as SignUpModel;
      user.name = newValue; // Update the desired field
      await box.putAt(
          index, user); // Replace the existing object with the updated one
      print('User updated successfully');
    } else {
      print('User not found');
    }

    Hive.close();
  }

  // Delete a user by key
  Future<void> deleteUserByKey(String username) async {
    var box = await Hive.openBox(hiveBox);

    final key = box.keys.firstWhere(
        (key) => (box.get(key) as SignUpModel).username == username,
        orElse: () => null);
    if (key != null) {
      await box.delete(key);
      print('User deleted successfully');
    } else {
      print('User not found');
    }

    Hive.close();
  }

  // Delete a user completely
  Future<void> deleteUser(String username) async {
    var box = await Hive.openBox(hiveBox);

    final index =
        box.values.toList().indexWhere((item) => item.username == username);
    if (index != -1) {
      await box.deleteAt(index);
      print('User deleted successfully');
    } else {
      print('User not found');
    }

    Hive.close();
  }

  // Search for key and values independently
  Future<List> getAllKeys() async {
    var box = await Hive.openBox(hiveBox);
    return box.keys.toList();
  }

  Future<List<SignUpModel>> getAllValues() async {
    var box = await Hive.openBox(hiveBox);
    return box.values.cast<SignUpModel>().toList();
  }

// search if there already values and keys exist
Future<bool> isExist(String username) async {
  var box = await Hive.openBox(hiveBox);
  List<SignUpModel> users = box.values.cast<SignUpModel>().toList();

  bool exists = users.any((user) => user.username == username);
  return exists;
}

// Login function to check if a username and password combination exists
Future<bool> loginFunction(String username, String password) async {
  var box = await Hive.openBox(hiveBox);
  List<SignUpModel> users = box.values.cast<SignUpModel>().toList();

  bool exists = users.any((user) =>
      user.username == username && user.password == password);
  return exists;
}

}
