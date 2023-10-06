

import 'funcionario.dart';

class Atendente extends Funcionario{


  Atendente({String? nome,int? idade,String? cpf,double? salario,String? cargo,String? setor, double? bonus}):
    super(nome: nome,idade: idade,cpf: cpf,salario: salario, setor: setor, bonus: bonus){
      this.cargo = 'Atendente';
      this.bonus = bonus != null ? bonus * 0.1 : 0.0 ;
  }
}