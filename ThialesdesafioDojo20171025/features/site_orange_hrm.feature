#language: pt
#utf-8

@SiteorangeHRM
Funcionalidade: Verificar funcionarios
Eu como usuário
Quero acessar as utilidades do site OrangeHRM na aba PIM
Para autenticar as funcionalidades para funcionarios

@CadastroFuncionarioOrangeHRM
Cenario: Cadastro de funcionario no site OrangeHRM
Dado que estou logado no site Orangehrmlive
Quando faço novo cadastro de funcionario
Entao funcionario cadastrado

@EditarFuncionarioOrangeHRM
Cenario: Editar funcionario no site OrangeHRM
Dado funcionario esteja cadastrado
Quando edito os dados do funcionario
Entao dados do funcionario sao alterados