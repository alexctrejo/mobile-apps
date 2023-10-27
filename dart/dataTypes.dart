void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String> ['kick.jpg'];

  print("""
    $pokemon
    $hp
    $isAlive
    ${abilities[0]}
    ${sprites[0]}
    """);
}
