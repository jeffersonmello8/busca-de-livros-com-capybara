describe "Buscando livros na casa do código", :buscanacasadocodigo do
  def preencherlivro(livro)
    fill_in "campoBuscaPrincipal", with: livro
  end

  def clicarnolivro(titulo)
    find(".busca-lista .busca-item .busca-item-titulo", text: titulo).click
  end

  def verificarnomedolivro(nome)
    res = find(".cabecalhoProdutoLivro-titulo-principal")
    expect(res).to have_content nome
  end

  def verificarsubtitulo(subtitulo)
    res = find(".cabecalhoProdutoLivro-titulo-sub")
    expect(res).to have_content subtitulo
  end

  def verificarautor(autor)
    res = find(".cabecalhoProdutoLivro-nomeAutor")
    expect(res).to have_content autor
  end

  before(:each) do
    visit "/"
  end

  it "Buscando livro de Rspec", :livrorspec do
    livro = "rspec"
    chamada = "RSpec: Crie especificações executáveis em Ruby"
    nomelivro = "RSpec"
    titulo = "Crie especificações executáveis em Ruby"
    autor = "Mauro George"
    preencherlivro(livro)
    click_button "buscar"
    clicarnolivro(chamada)
    verificarnomedolivro(nomelivro)
    verificarsubtitulo(titulo)
    verificarautor(autor)
  end

  it "Buscando livro de Cucumber", :livrocucumber do
    livro = "cucumber"
    chamada = "Cucumber e RSpec: Construa aplicações Ruby com testes e especificações"
    nomelivro = "Cucumber e RSpec"
    titulo = "Construa aplicações Ruby com testes e especificações"
    autor = "Hugo Baraúna"
    preencherlivro(livro)
    click_button "buscar"
    clicarnolivro(chamada)
    verificarnomedolivro(nomelivro)
    verificarsubtitulo(titulo)
    verificarautor(autor)
  end

  it "Buscando livro de Selenium WebDriver", :livroselenium do
    livro = "selenium"
    chamada = "Selenium WebDriver: Descomplicando testes automatizados com Java"
    nomelivro = "Selenium WebDriver"
    titulo = "Descomplicando testes automatizados com Java"
    autor = "Rafael Peixoto"
    preencherlivro(livro)
    click_button "buscar"
    clicarnolivro(chamada)
    verificarnomedolivro(nomelivro)
    verificarsubtitulo(titulo)
    verificarautor(autor)
  end
end
