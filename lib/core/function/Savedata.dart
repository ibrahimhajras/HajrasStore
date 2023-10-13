import 'package:get/get.dart';

class FormDataController extends GetxController {
  var username = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  void setFormValues(String newUsername, String newEmail, String newPassword) {
    username.value = newUsername;
    email.value = newEmail;
    password.value = newPassword;
  }
}
