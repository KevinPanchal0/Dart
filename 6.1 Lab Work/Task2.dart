List<String> getUniqueNames(List<String> names) => names.toSet().toList();

void main() {
  List<String> names = ["Jenil", "Kevin", "Moksh",];
  List<String> uniqueNames = getUniqueNames(names);
  print("Original Names: $names");
  print("Unique Names: $uniqueNames");
}
