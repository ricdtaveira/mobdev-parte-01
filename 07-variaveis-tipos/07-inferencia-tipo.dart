//

void main() {
  int continentes = 6;
  print(continentes.runtimeType); // > int
  // continentes = "Asia";

  var planetas;
  planetas = 8;
  print(planetas.runtimeType); // > int
  planetas = 'Marte, Mercurio, Venus, Terra, Saturno, Urano, Jupiter, Plutão'; 
  print(planetas.runtimeType);
}
