# Instação do Java

*   Comandos (linux): 
    *   `sudo apt install openjdk-14-jre-headless`.
    *   `sudo apt install openjdk-14-jdk-headless`.

# Compilação

*   Comando (linux): `javac MyClass.java`.
*   Outra opção: `javac -d . Class.java`.
    *   `-d .`: especifica o diretório.
        *   Um diretório é criado para o pacote.

# Execução

*   Comando (linux): `java MyClass`.

# Particularidades do Java

*   O nome do arquivo java deve ser igual ao nome da classe.
*   Classe deve iniciar com letra maíuscula e manter o singular, plural apenas para coleções.
*   Variáveis e métodos são anotados com camelCase.
*   Constantes do sistema são maiúsculas.
*   Toda linha de código deve estar em uma classe.
*   Java utiliza OOP (Object-Oriented Programming). Princípio: DRY ("Don't Repeat Yourself")
*   Case sensitive.

# Convenções para nomear pacotes

*	Agrupar os pacotes (pastas) de acordo com funcionalidade e módulos.
	*	Exemplo: `com.company.product.modulea`.
*	Se o projeto é simples, manter uma estrutura pequena:
	*	Exemplo: `com.company.product.model` e `com.company.product.util`, etc.

Da documentação:
```
The prefix of a unique package name is always written in all-lowercase ASCII letters and should be one of the top-level domain names, currently com, edu, gov, mil, net, org, or one of the English two-letter codes identifying countries as specified in ISO Standard 3166, 1981.
```

# superClass e subClass

*	Dúvida:
	*	Link: https://stackoverflow.com/questions/15596193/whats-the-difference-between-subclass-sc-new-subclass-and-superclass-sc-ne
	*	Pergunta: Qual a diferença entre `subClass sc = new subClass()` e `superClass sc = new subClass()`?
	*	Resposta: 
		*	`SuperClass obj = new SubClass()`: apenas os métodos públicos da superclasse são acessíveis.
			*	É possível ainda fazer cast.
		*	`SubClass obj = new SubClass()`: métodos públicos definidos na subclasse também estarão acessíveis.
*	Dúvida 2:
	*	Pergunta: é possível ter mais de uma classe em um arquivo `.java`?
	*	Resposta:
		*	Sim. Entretanto, só pode haver **UMA CLASSE PÚBLICA** de nível superior por arquivo `.java`, e as classes públicas de nível superior devem ter o mesmo nome que o arquivo de origem.
