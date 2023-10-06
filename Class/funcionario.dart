
enum cargosEnum {
  Gerente,
  Atendente,
  Vendedor,
}


class Funcionario {
  String? nome;
  int? idade;
  String? cpf;
  double? salario;
  String? cargo;
  String? setor;
  double? bonus;
  double? salarioTotal;

  Funcionario({String? nome, int? idade, String? cpf, double? salario, String? cargo, String? setor, double? bonus}) {
    this.nome = nome;
    this.idade = idade;
    this.cpf = cpf;
    this.salario = salario;
    this.cargo = cargo;
    this.setor = setor;
  }

  void salary(){
    if(this.cargo != cargosEnum.Gerente || this.cargo != cargosEnum.Atendente || this.cargo != cargosEnum.Vendedor){
      print('Infelizmente seu cargo não é válido');
    }
    else{ 
      this.salarioTotal = this.bonus! + this.salario!;  
    }
  }
}



