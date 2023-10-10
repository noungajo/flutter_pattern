# PAttern Flutter
l est essentiel d'avoir une arborescence de fichiers bien organisée pour faciliter la maintenance et l'extensibilité de l'application.
```
lib/
  |- main.dart
  |- app/
    |- routes.dart
    |- theme.dart
    |- modules/
      |- home/
        |- controllers/
          |- home_controller.dart
        |- views/
          |- home_view.dart
      |- user/
        |- controllers/
          |- user_controller.dart
        |- views/
          |- user_view.dart
    |- services/
      |- api_service.dart
    |- utils/
      |- helpers.dart
  |- data/
    |- models/
      |- user_model.dart
    |- provider/
      |- user_provider.dart
  |- constants/
    |- app_constants.dart
  |- widgets/
    |- custom_button.dart
    |- custom_textfield.dart
```

Explications :

1. main.dart : Point d'entrée de votre application où vous initialisez votre application Flutter.

2. app/ : Ce répertoire contient des fichiers liés à la configuration de l'application.

	. routes.dart : Gestion des routes de l'application.
	. theme.dart : Définition des thèmes et des styles.
3. app/modules/ : Ce répertoire contient les différents modules de votre application, tels que "home" et "user". Chaque module a son propre dossier contenant des contrôleurs, des vues et des fichiers de liaison.

	. controllers/ : Contient les contrôleurs GetX pour chaque module.
	. views/ : Contient les vues pour chaque module.
4. app/services/ : Contient les services de l'application, comme l'ApiService pour gérer les appels API avec Dio.

5. app/utils/ : Un répertoire pour stocker des utilitaires ou des fonctions d'aide qui peuvent être utilisés dans toute l'application.

6. data/ : Contient des fichiers liés aux données de l'application, tels que les modèles et les référentiels (providers).

	. models/ : Contient les classes de modèles de données.
	. providers/ : Contient les classes de référentiels pour interagir avec les données de l'API.
7. constants/ : Contient des fichiers de constantes, par exemple, des clés API, des couleurs, des polices, etc.

8. widgets/ : Contient des widgets personnalisés qui peuvent être réutilisés dans toute l'application.

## routes.dart
Ce fichier contient la navigation entre les différentes pages. Donc la liste des pages qui était initialement mis dans le main sera déclarée ici. voici un exemple :
import 'package:get/get.dart';

import '../app/modules/home/views/home_view.dart';
import '../app/modules/user/views/user_view.dart';

```dart
class AppRoutes {
  static final String initial = '/';
  static final routes = [
    GetPage(
      name: initial,
      page: () => HomeView(),
      binding: HomeBinding(), // Utilisez le binding correspondant
    ),
    GetPage(
      name: '/user',
      page: () => UserView(),
      binding: UserBinding(), // Utilisez le binding correspondant
    ),
  ];
}
```

et dans le fichier main.dart voici comment il sera appelé:

```dart
import 'package:get/get.dart';

import '../app/modules/home/views/home_view.dart';
import '../app/modules/user/views/user_view.dart';

class AppRoutes {
  static final String initial = '/';
  static final routes = [
    GetPage(
      name: initial,
      page: () => HomeView(),
      binding: HomeBinding(), // Utilisez le binding correspondant
    ),
    GetPage(
      name: '/user',
      page: () => UserView(),
      binding: UserBinding(), // Utilisez le binding correspondant
    ),
  ];
}

```


