import 'dart:math';
import 'funcionario.dart';

class Gerente extends Funcionario{
  String? setor;

  Gerente({String? nome,int? idade,String? cpf,String? salario,String? cargo,String? setor}):
  super(nome: nome,idade: idade,cpf: cpf,salario: salario){
    this.setor = setor;
    this.cargo = 'gerente';
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