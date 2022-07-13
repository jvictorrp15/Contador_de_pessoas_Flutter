# Contador de pessoas

Projeto feito totalmente em flutter, framework da linguagem dart.

## **Intuito**

O intuito do projeto era exercitar o conteúdo já aprendido nos primeiros módulos
do curso **[Criação de Apps Android e iOS com Flutter - Crie 16 Apps](https://www.udemy.com/course/curso-completo-flutter-app-android-ios/?couponCode=FLUTTER12192)** do professor Daniel Ciolfi.

****
****
### **Explicação App**

O aplicativo tem por finalidade fazer a contagem de pessoas, que ao apertar nos botões
**+1** e **-1** vai aumentando e diminuindo.

* Quando está em **0 Pessoas** ele diz que pode entrar, já que ainda tem espaço de pessoas.

* Quando está a cima de **10 Pessoas** foi estipulado que o lugar estaria cheio, e não suportaria tantas pessoas assim no estabelecimento.

* Quando está com quantidade **negativa** de pessoas, teve uma brincadeira feita, dizendo: **Aliens ??**

****
### **Explicação Código**

### **Variáveis**

Agora terá explicação das variáveis utilizadas.

* **`String _info`**  : variável privada de controle, onde se fosse as condições citadas a cima, ele mudaria o comportamento dentro do aplicativo, dizendo lotado, Alien ?? ou que pode entrar.


* **`String _generoInfo`** : variável privada que controla se a palavra escrita era **Pessoa:** ou **Pessoas:**.

* **`int _peoples`** : variável privada que controla quantos cliques houve no botão, fazendo o incremento de +1 ou decremento de -1.

### **Método**

Agora terá explicação da método utilizada para controle do aplicativo.


```
void _change(delta) {
    setState(() {
      _peoples += delta;

      if(_peoples < 0) {
        _info = "Aliens ??";
        _generoInfo = "Aliens:";
      }else if(_peoples == 0) {
        _info = "Pode Entrar";
        _generoInfo = "Pessoa:";
      }else if( _peoples > 10) {
        _info = "Lotado";
      }else {
        _info = "Pode Entrar";
        _generoInfo = "Pessoas:";
      }
    });
}
```

* **void _change(delta)** : um método privado do tipo void, que faz a checagem de tudo. Quando é pressionado o botão **+1** ou **-1**, ele faz o incremento ou decremento do número de pessoas, mudando o estado da variável **_peoples**.

O método faz o controle das condições, onde:

* **SE** **_peoples** for **MENOR** que 0, a variável **_info** irá dizer: Aliens ?? e a variável **_generoInfo** irá dizer: Aliens:

```
if(_peoples < 0) {
        _info = "Aliens ??";
        _generoInfo = "Aliens:";
}
```

* **SENAO SE** **_peoples** for **IGUAL** a 0, a variável **_info** irá dizer: Pode Entrar e a variável **_generoInfo** irá dizer: Pessoa:.

```
else if(_peoples == 0) {
        _info = "Pode Entrar";
        _generoInfo = "Pessoa:";
}
```

* **SENAO SE** **_peoples** for **MAIOR** que 10, a variável **_info** irá dizer: Lotado e a variável **_generoInfo** irá dizer: Pessoas:.
```
else if( _peoples > 10) {
        _info = "Lotado";
}
```

* **SENAO** for nenhuma das outras condicões, a variável **_info** irá dizer: Pode Entrar e a variável **_generoInfo** irá dizer: Pessoas:.

```
else {
        _info = "Pode Entrar";
        _generoInfo = "Pessoas:";
      }
    });
}
```

## **Widgets Utilizados**

Agora será mostrado os widgets do flutter que foram utilizados para compor essa simples aplicação:

* **Stack**: utilizado para colocar elementos a cima do outro, por utilizar uma imagem de fundo, foi necessário.

* **Column**: utilizado a coluna para alinhar todos os demais filhos, pois a aplicação demandava desse tipo de layout.

* **Text**: utilizado dois Text, para colocar as frases: Pessoas: 0, e o: Pode Entrar.

* **Padding**: utilizado para dar espaçamento entre os **FlatButtons**, para que não ficassem colados.

* **FlatButtons**: utilizado para receber interação do usuário, no caso foi necessário utilizar dois, o: **+1** e o **-1**.

# **Print da Aplicação**

Agora será mostrado como ficou a aplicação, utilizando layout passado pelo professor Daniel:

![Print App](src/imageScreen.jpg)

****
****

**Agradeço por terem acompanhado o post todo e a explicação, e trarei mais projetos.**
