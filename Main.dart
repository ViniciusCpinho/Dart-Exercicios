import "dart:async";
import 'dart:io';
import "Class/funcionario.dart";
import "Class/gerente.dart";

void main() {
  print("Digite o nome do Usuario");
  var entradaUsuario = stdin.readLineSync();

  // #region Instance
  Funcionario funcionario = new Funcionario(nome: entradaUsuario);
  var nomeFuncionario = funcionario.nome;

  Gerente gerente = new Gerente(nome: 'Poderoso Chefinho', idade: 12, cpf: '12345678910', salario: '1200', setor: 'marketing', bonus: 100);
  print(gerente.bonus);
  
  // #endregion

  int maxTries = 0;

  while(true){
    if(maxTries >= 4){
      break;
    }
  
    print("Olá $nomeFuncionario a ação que deseja realizar");
    print(" -- Aumento");
    print(" -- Reconhecimento");
    print(" -- Férias");
    var action = stdin.readLineSync();

    switch (action){

      case "Aumento":
          maxTries = maxTries + 1;
          gerente.increase(nomeFuncionario);
        break;
      
      case "Reconhecimento":
          maxTries = maxTries + 1;
          gerente.knowledgment(nomeFuncionario);
        break;

      case "Férias":
          maxTries = maxTries + 1;
          gerente.vocations(nomeFuncionario);
        break;

      default:
        print("Ação não reconhecida");
        break;
    }
  }
}