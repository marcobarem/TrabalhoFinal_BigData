# Relatório do Projeto de Big Data e NoSQL

## Introdução

Este relatório apresenta a implementação de uma solução de Big Data e NoSQL desenvolvida com base na configuração inicial e exemplos do repositório [IDP BigData](https://github.com/klaytoncastro/idp-bigdata). O projeto utiliza diversas tecnologias discutidas em sala de aula para analisar dados musicais do Spotify, integrando MongoDB, Redis, Apache Spark, Jupyter Notebook e Streamlit via Docker.

## 1. Propósito da Solução

O objetivo deste projeto é criar uma aplicação robusta para a análise de dados musicais do Spotify, permitindo explorar a popularidade das músicas ao longo do tempo, identificar tendências em gêneros musicais e correlacionar características musicais com sua popularidade. Utilizamos uma combinação de tecnologias de Big Data e NoSQL para armazenar, processar e visualizar grandes volumes de dados de forma eficiente.

link para o dataset https://www.kaggle.com/datasets/amitanshjoshi/spotify-1million-tracks

## 2. Descrição da Arquitetura

A arquitetura do sistema é composta pelos seguintes componentes principais:

- **MongoDB**: Utilizado como banco de dados principal, armazena os dados musicais em formato de documentos, proporcionando flexibilidade nas consultas e manipulação de grandes volumes de dados não estruturados.
  
- **Redis**: Atua como camada de cache, armazenando resultados de consultas frequentemente acessadas para melhorar a performance da aplicação e reduzir o tempo de resposta.
  
- **Apache Spark via Docker**: Responsável pelo processamento de Big Data, permitindo realizar análises em larga escala de maneira eficiente.
  
- **Jupyter Notebook**: Utilizado para análise e visualização de dados de forma interativa, facilitando a exploração de dados e execução de análises complexas.
  
- **Streamlit via Docker**: Fornece uma interface interativa para visualização dos dados, permitindo que os usuários finais interajam com os dados de maneira intuitiva.

- **Docker**: Utilizado para conteinerização e gerenciamento de todos os serviços mencionados, garantindo que funcionem de maneira isolada e controlada. Docker Compose é utilizado para definir como esses containers interagem, suas dependências e como são configurados em um ambiente unificado.

### Estrutura de Diretórios do Projeto

 ```
    ├── jupyter
    ├── mongodb
    │   ├── datasets
    │   ├── db-seed
    │   ├── docker-compose.yml
    │   └── wait-for-it.sh
    ├── redis
    │   ├── static
    │   ├── templates
    │   ├── app.py
    │   ├── docker-compose.yml
    │   ├── Dockerfile
    │   └── requirements.txt
    ├── spark
    │   ├── config
    │   ├── data
    │   ├── notebooks
    │   │   ├── initSpark.ipynb
    │   │   └── part2.ipynb
    │   ├── docker-compose.yml
    │   ├── Dockerfile
    │   └── requirements.txt
    ├── streamlit
    │   ├── app.py
    │   ├── docker-compose.yml
    │   ├── Dockerfile
    │   └── requirements.txt
    ├── .gitignore
    ├── docker-compose.txt
    ├── Relatório BigData.pdf
    ├── start_project.sh
    └── stop_project.sh```

3. Como Testar a Solução
Para testar a solução, siga as etapas abaixo:

Clone o Repositório: Clone o repositório do projeto para sua máquina local.

Inicie os Containers Docker: Utilize os scripts start_project.sh e stop_project.sh para iniciar e parar os containers Docker que compõem a solução.

```./start_project.sh```

Acesse as Interfaces:

Streamlit: Acesse localhost:8501 no seu navegador para interagir com a interface Streamlit e visualizar os dados.
Jupyter Notebook: Acesse localhost:8889 para utilizar os notebooks Jupyter para análises mais detalhadas.
MongoDB: Acesse a interface do MongoDB na porta configurada (localhost:8081).
Redis: Utilize a interface Redis Commander em localhost:8082 para monitorar o cache.
Executar Análises: Utilize a interface Streamlit para realizar consultas e visualizar gráficos interativos baseados nos dados musicais do Spotify. Os notebooks Jupyter também podem ser utilizados para análises mais avançadas e visualizações customizadas.

4. Demonstração e Avaliação
A solução será demonstrada em um seminário em sala de aula, onde será avaliada segundo os seguintes critérios:

Qualidade da Apresentação: Clareza e organização na apresentação da solução, incluindo a explicação dos componentes e funcionamento da aplicação.
Criatividade e Inovação: Originalidade na abordagem e soluções inovadoras para os desafios apresentados.
Correção Técnica: Escolha adequada das ferramentas e arquitetura, bem como a implementação correta e eficiente dos componentes da solução.
Este relatório descreve a implementação e fornece as instruções necessárias para testar e avaliar a solução de Big Data e NoSQL desenvolvida, garantindo uma compreensão clara de sua arquitetura e funcionalidades.