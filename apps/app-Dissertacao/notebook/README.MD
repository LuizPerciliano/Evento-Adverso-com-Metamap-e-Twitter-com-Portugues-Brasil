# MaDIB - Manutenção de Documentos de Bases Indexadas

## Introdução

O **MaDIB** é um sistema desenvolvido para auxiliar na gestão e análise de documentos provenientes de **bases de dados indexadas como Scopus e PubMed**. Ele foi criado para facilitar o processo de revisão de literatura, permitindo aos pesquisadores organizar, classificar e analisar os resultados de suas buscas de forma mais eficiente. 

O sistema foi implementado utilizando a linguagem de programação Python e a ferramenta Jupyter Notebook. O MaDIB foi inicialmente desenvolvido para suportar pesquisas na área de **farmacovigilância**, mas pode ser adaptado para outros contextos.

## 📊 Funcionalidades Principais

- **Coleta de Dados**: Permite o carregamento de arquivos de dados exportados das bases Scopus e PubMed em formato ".csv".
- **Análise de Dados**: Realiza diversas análises sobre os dados carregados:
  - **Contagem de documentos**: Calcula o número de registros não nulos e únicos na coluna de título.
  - **Análise de acesso**: Identifica e conta documentos por níveis de acesso.
  - **Tipos de documentos**: Classifica e quantifica documentos por tipo (artigo, livro, etc.).
  - **Veículos de publicação**: Identifica e conta documentos por veículo de publicação.
  - **Análise de palavras-chave**: Cria nuvens de palavras a partir dos títulos e resumos dos documentos.
- **Ajustes de Colunas**: Padroniza nomes de colunas e adiciona colunas como cópias de informações relevantes para análise, como "doi", "título do documento PubMed" e informações de paginação.
- **Manutenção de Páginas**: Ajusta dados de páginas inseridos na base do Scopus.
- **Exportação de Dados**: Gera um arquivo ".xlsx" consolidado com os dados das bases Scopus e PubMed.
- **Processamento de Bases Indexadas**: Realiza uma pré-análise nos dados coletados.

## 🔧 Como Usar

### 1. Instalação

- Certifique-se de ter o Python (versão 3.10.4 ou superior) instalado.
- Instale as bibliotecas necessárias listadas no arquivo `requirements.txt`:

```bash
pip install -r requirements.txt
```

- Recomendamos o uso do **Jupyter Notebook** para executar o sistema.

### 2. Coleta de Dados

- Exporte os dados das bases Scopus e PubMed em formato ".csv", incluindo todas as colunas disponíveis.
- Carregue os arquivos ".csv" no MaDIB para iniciar o processamento.

### 3. Análise de Dados

- Utilize as funcionalidades do MaDIB para realizar as análises desejadas sobre os dados carregados.

### 4. Exportação

- Exporte os resultados das análises em formato ".xlsx" para análises posteriores:

```bash
python exportar_dados.py
```

## 📚 Tecnologias Utilizadas

- **Python** (versão 3.10.4)
- **Jupyter Notebook**
- **Bibliotecas Python**: pandas, matplotlib, wordcloud, etc. (consulte o arquivo `requirements.txt`)

## 🛠️ Contribuições

O **MaDIB** é um projeto de código aberto e encoraja contribuições da comunidade. Sinta-se à vontade para:

1. Reportar bugs.
2. Sugerir melhorias.
3. Enviar pull requests.

Para contribuir:

```bash
git clone https://github.com/seu-usuario/madib.git
cd madib
git checkout -b nova-funcionalidade
```

## 🔍 Informações Adicionais

O MaDIB foi utilizado em uma pesquisa que envolveu o **MetaMap** e **Reações Adversas a Medicamentos (RAMs)**. 

## 🌍 Próximos Passos

- O **MaDIB** está em desenvolvimento contínuo, com planos para a adição de novas funcionalidades, como:
  - Novo sistema com usabilidade mais fácil e acessível.
  - Integração com outras bases de dados.
  - Melhoria na visualização de resultados.
  - Análise automatizada de citações.

---

Desenvolvido com ❤️ por [Seu Nome] e colaboradores.
