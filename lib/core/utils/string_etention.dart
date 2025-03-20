extension StringExtensions on String {
  String removeTabsAndNewlines() {
    return replaceAll('\t', '').replaceAll('\n', '');
  }
}