// Mapas
// Neste exemplo, criamos um mapa de strings para inteiros chamado "notas" 
// e adicionamos alguns pares chave-valor a ele usando a sintaxe de literal 
// de mapa. 
// Usamos o operador de índice "[]" para acessar o valor correspondente 
// à chave "Maria". 
// Também adicionamos um novo par chave-valor ao mapa usando a sintaxe 
// de índice e removemos um par existente usando o método "remove".


void main() {

   Map<String, int> notas = {'João': 8, 'Maria': 9, 'Pedro': 7};

   print(notas['Maria']); // Saída: 9

   notas['Lucas'] = 10; //Adiciona um elemento no Conjunto

   print(notas); // Saída: {João: 8, Maria: 9, Pedro: 7, Lucas: 10}
   notas.remove('Pedro');
   print(notas); // Saída: {João: 8, Maria: 9, Lucas: 10}
}
