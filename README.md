# Suporte de Puxador de Porta - Guarda-Roupas

Este modelo 3D foi criado no OpenSCAD com o objetivo de substituir o suporte de puxador de porta de um guarda-roupas. O modelo foi projetado para ser fácil de ajustar de acordo com as dimensões do puxador original e pode ser impresso em 3D para fabricação.

## Objetivo

O suporte foi desenvolvido para garantir a fixação segura do puxador nas portas do guarda-roupas. Utilizando a impressão 3D, o modelo pode ser facilmente replicado, permitindo a substituição rápida e econômica do suporte danificado ou quebrado.

## Bibliotecas Utilizadas

O código foi construído utilizando várias bibliotecas do projeto **BOSL2** para facilitar o processo de modelagem e permitir a inclusão de funcionalidades avançadas, como roscas e máscaras. As bibliotecas utilizadas são:

- **`<BOSL2/std.scad>`**: Biblioteca padrão com funções e definições comuns, que facilitam a construção de objetos geométricos.
- **`<BOSL2/threading.scad>`**: Biblioteca usada para modelar roscas e outros componentes com rosca, essenciais para a criação de suportes de puxadores que exigem um encaixe roscado.
- **`<BOSL/constants.scad>`**: Fornece constantes úteis para definir medidas padrão, como diâmetros, distâncias e espessuras, que são usadas no design do suporte.
- **`<BOSL/masks.scad>`**: Utilizada para criar máscaras e recortes no modelo, ajudando a ajustar a forma final e garantir que o suporte encaixe perfeitamente nas dimensões do puxador.

## Estrutura do Código

### Definição de Parâmetros

No início do código, são definidos parâmetros de ajuste, como a largura, altura e profundidade do suporte. Esses parâmetros podem ser facilmente modificados para se adequar a diferentes tamanhos de puxadores ou portas de guarda-roupas.

### Modelagem do Suporte

A estrutura principal do suporte é criada a partir de formas geométricas simples, como cubos e cilindros, que são então combinadas para formar o modelo final. A função **`threading.scad`** é utilizada para criar a rosca interna que permite que o puxador seja fixado de maneira firme e segura.

### Ajustes de Máscara

A biblioteca **`masks.scad`** é utilizada para criar recortes específicos que ajustam o encaixe do suporte nas bordas da porta e no próprio puxador. Esses recortes são importantes para garantir que o suporte tenha a espessura correta e se ajuste perfeitamente ao seu lugar.

### Personalização

Os parâmetros do modelo podem ser facilmente modificados para atender a necessidades específicas. Basta ajustar os valores na seção de definições de parâmetros para alterar o tamanho e a forma do suporte, permitindo que o código seja reutilizado em diferentes projetos ou para outros tipos de puxadores.

## Instruções para Impressão 3D

1. **Geração do Modelo**: Após modificar os parâmetros conforme necessário, use o OpenSCAD para gerar o modelo final.
2. **Fatiamento**: Exporte o arquivo para o formato STL e use um software de fatiamento, como o Cura ou PrusaSlicer, para preparar o modelo para impressão.
3. **Configurações de Impressão**: Ajuste as configurações de impressão 3D de acordo com o material e a precisão desejados. Para um bom ajuste, recomenda-se uma resolução de impressão alta e uma camada fina.
4. **Impressão**: Imprima o modelo utilizando o material desejado, como PLA ou ABS.
5. **Finalização**: Após a impressão, verifique se a rosca está devidamente formada e se o suporte encaixa corretamente na porta do guarda-roupas.

## Contribuições

Sinta-se à vontade para contribuir para este projeto, seja fazendo ajustes para melhorar o modelo ou compartilhando sugestões de melhorias. Caso tenha feito modificações interessantes, envie um pull request!

## Licença

Este modelo está disponível sob a licença [GLP-3.0]. 


