module Rest
    class Empregados
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']
        #base_uri 'http://inm-api-test.herokuapp.com'

        



        def get_all_empregados
            auth = {:username => "inmetrics", :password => "automacao"}
            self.class.get('/empregado/list_all', :basic_auth => auth)
        end      
        
        def get_empregado_id id
            auth = {:username => "inmetrics", :password => "automacao"}
            self.class.get('/empregado/list/'"#{id}" , :basic_auth => auth)
        end    



        def post_empregado
            #gerando dados aleatorios 
            cargos = ["Analista De Testes", "Analista De Automação", "Desenvolvedor", "PO", "Scrum Master"]
            sexo = ["m","f","i"]
            tipo_contratacao = ["pj","clt"]    
                
            cargo = cargos.sample 
            sexo = sexo.sample
            tipo_contratacao = tipo_contratacao.sample
            nome = Faker::Name.name
            cpf = DocumentosBr.cpf_formatted
            salario = '6.000,99'#Faker::Number.decimal(l_digits: 4, r_digits: 2)
            comissao = '3.500,88'#Faker::Number.decimal(l_digits: 4, r_digits: 2)
            data_contratacao = Faker::Date.between(from: '2014-09-23', to: '2020-10-25')
            data_formatada = data_contratacao.strftime("%d/%m/%Y")
                
            dados = {admissao: data_formatada, cargo: cargo, comissao: comissao, cpf: cpf, departamentoId: 1,
                    nome: nome, salario: salario, sexo: sexo, tipo_contratacao: tipo_contratacao}.to_json
                    
            auth = {:username => "inmetrics", :password => "automacao"}
            self.class.post('/empregado/cadastrar/'"#{dados}", :basic_auth => auth)

           
        
        
        end


        def delete_empregado_id id
            auth = {:username => "inmetrics", :password => "automacao"}
            self.class.delete('/empregado/deletar/'"#{id}" , :basic_auth => auth)
        end   



        def put_empregado id
            #gerando dados aleatorios 
            cargos = ["Analista De Testes", "Analista De Automação", "Desenvolvedor", "PO", "Scrum Master"]
            sexo = ["m","f","i"]
            tipo_contratacao = ["pj","clt"]    
                
            cargo = cargos.sample 
            sexo = sexo.sample
            tipo_contratacao = tipo_contratacao.sample
            nome = Faker::Name.name
            cpf = DocumentosBr.cpf_formatted
            salario = '6.000,99'#Faker::Number.decimal(l_digits: 4, r_digits: 2)
            comissao = '3.500,88'#Faker::Number.decimal(l_digits: 4, r_digits: 2)
            data_contratacao = Faker::Date.between(from: '2014-09-23', to: '2020-10-25')
            data_formatada = data_contratacao.strftime("%d/%m/%Y")
                
            dados = {admissao: data_formatada, cargo: cargo, comissao: comissao, cpf: cpf, departamentoId: 1,
                    nome: nome, salario: salario, sexo: sexo, tipo_contratacao: tipo_contratacao}.to_json
                    
            auth = {:username => "inmetrics", :password => "automacao"}
            self.class.put('/empregado/alterar/'"#{id}""#{dados}", :basic_auth => auth)

           
        
        
        end

 




        
    end
end
