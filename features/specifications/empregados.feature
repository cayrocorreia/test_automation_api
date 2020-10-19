#language: pt

@users
Funcionalidade: Empregado Controller
    validar operações da API 

@get_all_empregados
    Cenário: Validar GET ALL API 
    Quando faço uma requisição GET para o serviço Empregado
    Então o serviço Empregado deve responder com 200
    E retorna a lista de empregados 


@get_empregado_id
    Cenário: Validar GET POR ID API 
    Quando faço uma requisição GET por id para o serviço Empregado
    Então o serviço Empregado deve responder com 202
    E retorna o empregado referente ao id informado 


 @delete_empregado
    Cenario: Remover Empregado
    Quando faço uma requisição DELETE para o serviço Empregado
    Então o serviço Empregado deve responder com 202
    E retorna o body deletado



############################################
 ##falta corrigir  (URI::InvalidURIError)
 @put_empregado
    Cenário: Validar PUT NOVO EMPREGO  
    Quando faço uma requisição PUT alterando o funcionario para o serviço Empregado
    Então o serviço Empregado deve responder com 202
    E retorna empregado que foi alterado 

  ##falta corrigir  (URI::InvalidURIError)
@post_empregado
    Cenário: Validar POST NOVO EMPREGO  
    Quando faço uma requisição POST infomando o novo funcionario para o serviço Empregado
    Então o serviço Empregado deve responder com 202
    E retorna novo empregado que foi cadastrado 

