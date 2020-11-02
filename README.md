#### **Karate**

_**Documentação**_ 

https://github.com/intuit/karate/ 


_**API utilizada para teste:**_

http://fakerestapi.azurewebsites.net/swagger/ui/index#/ 


Para criar o projeto já com sua estrutura inicial, foi utilizada a instrução que consta no item **Quickstart** da documentação:

No terminal, executar o comando abaixo, sendo que **com.mycompany** e **myproject** podem ser alterados conforme a necessidade: 

mvn archetype:generate \-DarchetypeGroupId=com.intuit.karate \-DarchetypeArtifactId=karate-archetype \-DarchetypeVersion=0.9.4 \-DgroupId=com.mycompany \-DartifactId=myproject 
 

A versão 0.9.4 do Karate está com problema para executar os testes através do **mvn test** e para gerar relatório quando alguns testes falham. 
 

Para executar os testes através do **mvn test** deve-se efetuar as alterações abaixo: 
 

Em **dependencies/dependency**, incluir o **junit-jupiter-engine**: 

<dependency> 
    <groupId>org.junit.jupiter</groupId> 
    <artifactId>junit-jupiter-engine</artifactId> 
    <version>5.4.0</version> 
    <scope>test</scope> 
</dependency> 
 

Em **build/plugins/plugin**, incluir o **maven-surefire-plugin**: 

<plugin> 
    <groupId>org.apache.maven.plugins</groupId> 
    <artifactId>maven-surefire-plugin</artifactId> 
    <version>2.22.2</version> 
</plugin> 
 

Para gerar o relatório mesmo quando ocorre erro na execução, alterar a versão do Karate, conforme abaixo: 

<karate.version>0.9.5.RC3</karate.version> 
 

No link abaixo é exibida uma outra opção para execução dos testes e de geração de um outro relatório, através do **karate.jar**: 

https://medium.com/cwi-software/karate-dsl-automatizando-testes-de-api-de-forma-simples-3624ab230198 
 

1. Faça download da última versão do **karate.jar**, disponível na página de releases da ferramenta: https://github.com/intuit/karate/releases 
2. Crie uma nova pasta/diretório, e copie o executável para esta pasta. Sugestão: renomeie o executável para karate.jar; 
3. Dentro de sua nova pasta, crie duas subpastas: features e data; 
4. Acesse a pasta features, crie um novo arquivo, e salve com a extensão .feature; 
5. Adicione o trecho abaixo em seu novo arquivo de feature e salve; 
6. Via linha de comando, acesse sua pasta principal (a que possui o executável e as pastas feature e data) e execute o seguinte comando: java -jar karate.jar features/ 
7. Após executar sua feature via linha de comando, verifique se foi criada uma nova pasta chamada target/ 
8. Acesse o relatório gerado em target/cucumber-html-reports, abrindo o arquivo overview-features.html em seu navegador. 


Para executar todos os testes através de linha de comando, na pasta do projeto, executar:
    
    mvn test
    
Para executar apenas uma classe de teste através de linha de comando, na pasta do projeto, executar:
    
    mvn test -Dtest=<nome da classe .java a executar>
    
    Exemplo:
    mvn test -Dtest=BooksRunner


