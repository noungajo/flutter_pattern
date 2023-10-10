import 'package:dotche/src/utils/user_session/storage.dart';
import 'package:get/get.dart';

import '../internationalisation/inter_controller.dart';

class UserSessionController extends GetxController {
  // ignore: non_constant_identifier_names
  String userToken = "";
  RxBool logged = false.obs;
  String userDataFile = "user_data.txt";
  String userLanguageFile = "language.txt";
  bool refreshToken =
      false; //lorsque le loginexpiredtoken echoue on envoie le user à l'interface de login et on met cette var à true. Ainsi lorsqu'il se connecte on fait juste un navigation
  UserSessionController() {
    onInit();
  }

  @override
  onInit() {
    userToken = "";
    super.onInit();
  }

  setToken(String token) {
    userToken = token;
    logged.value = true;
  }

  String getToken() {
    return userToken;
  }

  bool islogged() {
    return logged.value;
  }

  signOut() async {
    /*
    il faudra aussi par la même occasion supprimer le fichier qui stocke les informations de connexion de l'utilisateur
    */

    Storage storage = Storage();
    var data = await storage.deleteFile(userDataFile);
    if (data == 1) {
      //deconnection reussi
    } else {
      //deconnection echouée
    }
  }

/*
cette fonction permet de manipuler le fichier et de fournir les informations de conexion.
*/
//ça check.
  oldUser() async {
    Storage storage = Storage();

    final checkIfOldConnexion = await storage.existFile(userDataFile);
    if (checkIfOldConnexion == true) {
      //on récupère ses infos
      storage.readUserInfos(userDataFile).then(
        (value) async {
          //relogge l'utilisateur
        },
      );
      //et on le logge
    } else {
      //un nouveau utilisateur
    }
  }

  loadLanguage() async {
    Storage storage = Storage();
    InterController interController = Get.find<InterController>();
    final checkLanguageChanging = await storage.existFile(userLanguageFile);
    if (checkLanguageChanging == true) {
      //on récupère la langue déjà utilisée
      storage.readUserInfos(userLanguageFile).then(
        (value) async {
          interController.changeLanguage(value, value);
        },
      );
    }
  }

/*
 Sauvegarde des coordonnées de l'utilisateur de la forme: "emailx*:,zpassword"
 il suffit de faire un split dessus pour avoir chaque champs
 fichier : user_data.txt
*/
  storeDataConnection(String userData) async {
    Storage storage = Storage();
    await storage.writeUserInfos(userData, userDataFile);
  }

  storeLanguage(String language) async {
    print("langue sauvegardé" + language);
    Storage storage = Storage();
    await storage.writeUserInfos(language, userLanguageFile);
  }
}
