# language: pt
Funcionalidade: Configurar produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

    Contexto:
    Dado quero configurar meu produto de acordo com meu tamanho e gosto

    Cenário: Seleção de cores, tamanhos e quantidade
    Quando fazer a seleção do produto
    E selecionar o tamanho, cor e quantidade
    Então sistema dever permitir avançar para proxima etapa

    Cenário: Seleção de produtos
    Quando quando estiver selecionando produtos
    E colocar mais de 10 produtos
    Então sistema deve inserir uma mensagem de alerta: "número de produtos acima do permitido"

    Cenário: Limpar carinho
    Quando carinho estiver cheio
    E usuário clicar em Limpar
    Então o sistema deve voltar ao estado original