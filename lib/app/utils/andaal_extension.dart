extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
  String subStringPerso() => length < 28 ? this : substring(0, 25) + "...";
  String moreSubStringPerso() => length < 35 ? this : substring(0, 32) + "...";
}
