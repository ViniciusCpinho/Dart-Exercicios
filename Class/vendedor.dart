
import 'funcionario.dart';

class Vendedor extends Funcionario{
  int? vendas;
  double? comissao;
  double? meta;


  Vendedor({int? vendas, double? comissao,String? nome,int? idade,String? cpf,double? salario,String? cargo,String? setor, double? bonus}):
    super(nome: nome,idade: idade,cpf: cpf,salario: salario, setor: setor, bonus: bonus){
      this.vendas = vendas;
      this.comissao =comissao;
      this.cargo = 'vendedor';
      this.bonus = bonus != null ? bonus * 0.15 : 0.0;
  }

  void checkmeta(){
    if(this.vendas == this.meta){
      this.salario = this.salario! + (this.salario! * 0.1);
    }
  }
}