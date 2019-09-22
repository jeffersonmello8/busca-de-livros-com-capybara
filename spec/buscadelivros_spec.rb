describe 'Buscando livros na casa do código', :buscanacasadocodigo do
    
    def preencherlivro (livro) 
        fill_in 'campoBuscaPrincipal', with: livro
    end 

    def clicarnolivro (titulo)
        find('.busca-lista .busca-item .busca-item-titulo', text: titulo).click
    end 

    def verificarnomedolivro(nome)
        res = find('.cabecalhoProdutoLivro-titulo-principal')
        expect(res).to have_content nome
    end 

    def verificarsubtitulo(subtitulo)
        res = find('.cabecalhoProdutoLivro-titulo-sub')
        expect(res).to have_content subtitulo
    end 

    def verificarautor(autor)
        res = find('.cabecalhoProdutoLivro-nomeAutor')
        expect(res).to have_content autor
    end 

    before(:each) do 
        visit 'https://www.casadocodigo.com.br/'
    end 

    it 'Buscando livro de Rspec', :livrorspec do
        preencherlivro('rspec')
        click_button 'buscar'
        clicarnolivro('RSpec: Crie especificações executáveis em Ruby')
        verificarnomedolivro('RSpec')
        verificarsubtitulo('Crie especificações executáveis em Ruby')
        verificarautor('Mauro George')     
    end 

    it 'Buscando livro de Cucumber', :livrocucumber do        
        preencherlivro('cucumber')
        click_button 'buscar'
        clicarnolivro('Cucumber e RSpec: Construa aplicações Ruby com testes e especificações')
        verificarnomedolivro('Cucumber e RSpec')
        verificarsubtitulo('Construa aplicações Ruby com testes e especificações')
        verificarautor('Hugo Baraúna')   
    end 


end