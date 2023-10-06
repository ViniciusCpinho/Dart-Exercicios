import 'dart:math';
import 'funcionario.dart';

class Gerente extends Funcionario{

  Gerente({String? nome,int? idade,String? cpf,double? salario,String? cargo,String? setor, double? bonus}):
  super(nome: nome,idade: idade,cpf: cpf,salario: salario, setor: setor, bonus: bonus){
    this.cargo = 'gerente';
    this.bonus = bonus != null ? bonus * 0.2 : 0.0 ;
  }


  void increase(nomeDoInfeliz) {
  int possibilidade = Random().nextInt(50);

  if (possibilidade == 41) {
    print(">-- Seu chefe diz: $nomeDoInfeliz vou pensar");
  } else {
    print(">-- Seu chefe diz: Infeliz pare de gastar meu tempo.");
  }
}

  void knowledgment(nomeDoInfeliz) {
    int possibilidade = Random().nextInt(50);

    if (possibilidade == 49) {
      print(
          ">-- Seu chefe diz: $nomeDoInfeliz vou pensar se voce merece infeliz.");
    } else {
      print(">-- Seu chefe diz: Reconhecimento? Pare de gastar meu tempo.");
    }
  }

  void vocations(nomeDoInfeliz) {
    int possibilidade = Random().nextInt(50);

    if (possibilidade == 2) {
      print(
          ">-- Seu chefe diz: $nomeDoInfeliz vou pensar se voce tem direito infeliz.");
    } else {
      print(
          ">-- Seu chefe diz: Voce merece, mas estamos com poucas pessoas. Infeliz pare de gastar meu tempo.");
    }
  }
}