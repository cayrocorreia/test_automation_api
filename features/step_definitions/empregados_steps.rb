Quando('faço uma requisição GET para o serviço Empregado') do
    @request_empregados = empregados.get_all_empregados
end
  
Então('o serviço Empregado deve responder com {int}') do |status_code|
    #print @request_empregados.body
    expect(@request_empregados.code).to eq status_code
end
  
Então('retorna a lista de empregados') do
    expect(@request_empregados.body).not_to be_empty
end

Quando('faço uma requisição GET por id para o serviço Empregado') do
    @id = Faker::Number.between(from: 1000, to: 1500) 
    @request_empregados = empregados.get_empregado_id @id

end
  
  Então('retorna o empregado referente ao id informado') do
    print @request_empregados.body
end

Quando('faço uma requisição DELETE para o serviço Empregado') do
    @id = Faker::Number.between(from: 1000, to: 1500) 
    @request_empregados = empregados.delete_empregado_id @id
  end
  
  Então('retorna o body deletado') do
    @request_empregados.body.eql? 'Deletado'
    print @request_empregados.body
  end

  Quando('faço uma requisição PUT alterando o funcionario para o serviço Empregado') do
    @id = Faker::Number.between(from: 1000, to: 1500) 
    @request_empregados = empregados.put_empregado @id

    
  end
  
  Então('retorna empregado que foi alterado') do
    print @request_empregados.body
  end

Quando('faço uma requisição POST infomando o novo funcionario para o serviço Empregado') do
    @request_empregados = empregados.post_empregado
  end
  
  Então('retorna novo empregado que foi cadastrado') do
    expect(@request_empregados.body).not_to be_empty
    print request_empregados.body

  end


















