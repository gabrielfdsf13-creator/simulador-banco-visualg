# 🏦 Sistema Bancário Automatizado

Este projeto consiste em um protótipo funcional de um **Sistema Bancário** desenvolvido em pseudocódigo para o ambiente **VisuAlg**. O objetivo principal é resolver o problema de gerenciamento de dados bancários básicos (como controle de saldo, saques, depósitos e exibição de extratos), oferecendo uma interface puramente visual construída em terminal com alguns elementos de engenharia de arte ASCII.



## 🛠️ Documentação Técnica

### Lógica Utilizada

O sistema funciona com base em um fluxo contínuo de interações disparadas por um menu principal numérico. O programa recebe as requisições do usuário, valida as condições financeiras (como a existência de saldo suficiente antes de aprovar um saque) e atualiza as variáveis inicializadas em 0 em tempo real. A interface se renova a cada operação limpando a tela do console e renderizando os componentes gráficos em alta resolução de texto.

### Estruturas Aplicadas

* **Entrada e Saída de dados (`escreval ... leia`):** Uso claro de leia e escreva/escreval para interagir com o usuário.
* **Laço Repetitivo (`repita ... ate`):** Aplicado para manter o menu principal ativo e em execução contínua até que o usuário decida explicitamente digitar a opção de saída.
* **Estruturas de Procedimento (`procedimento ... fimprocedimento`):** Utilizadas para direcionar o fluxo do algoritmo de forma limpa e eficiente para cada uma das funções selecionadas no menu (Consultar saldo, Sacar, Depositar, Ver Extrato, Alterar Senha). O primeiro procedimento contém um algoritmo de decomposição de valores inseridos para cédulas de 100 reais até moedas de 1 real e uma estrutura condicional para barrar valores inválidos. Os procedimentos seguintes contém algoritmos responsáveis por consultar saldo, depositar valores acima de 0, exibir extrato usando um vetor de caracteres e alterar a senha inserida, caso seja da vontade do usuário, depois de confirmar que a nova senha é diferente da antiga.
* **Estruturas Condicionais Se-Entao (`se ... entao ... senao`):** Aplicadas nas validações cruciais de segurança do sistema, como checagem de valores negativos em depósitos, consistência de saldo para saques e responsável por encerrar o algoritmo caso a senha requisitada seja diferente da original em 3 tentativas.
* **Comando Limpatela:** Utilizado antes de iniciar cada procedimento do algoritmo requisitado pelo usuário, a fim de renovar a interface sempre que uma nova operação está pra ser executada e direcionar o foco da atenção para minimizar a ocorrência de ambiguidade.

### Limitações Conhecidas

* **Persistência de Dados:** O VisuAlg não possui banco de dados nativo; portanto, todos os dados cadastrados e saldos são armazenados temporariamente na memória RAM e serão reiniciados ao fechar o programa.
* **Tipagem de Entrada:** O programa espera valores numéricos válidos (reais/inteiros) para as operações finaceiras. A inserção acidental de caracteres de texto em campos numéricos causará erro de execução no interpretador. Porém, mesmo aceitando valores reais, o programa foi desenvolvido e pensado para receber valores inteiros.
* **Valores de Operação:** O sistema não trabalha com limites de crédito especial/cheque especial (o saldo não pode se tornar negativo).



## 📖 Manual de Utilização

Siga o passo a passo abaixo para conseguir rodar e testar o código corretamente:

* **Passo 1:** Baixe e instale o aplicativo **VisualG** (recomendada a versão 3.0 ou superior).
* **Passo 2:** Faça o download do arquivo `codigo_fonte.alg` deste repositório.
* **Passo 3:** Abra o VisualG, clique em **"Arquivo" -> "Abrir"** e selecione o código baixado.
* **Passo 4:** Para executar o aplicativo, clique no menu **Executar -> Rodar Algoritmo** (ou pressione a tecla **F9** no seu teclado).
* **Passo 5:** Siga as instruções que aparecerão na tela do console (janela de saída preta).

> **💡 Dica de Visualização:** Para que as telas gráficas do código renderizem perfeitamente alinhadas, lembre-se de **maximizar a janela preta do console** assim que o programa for iniciado.



## 
