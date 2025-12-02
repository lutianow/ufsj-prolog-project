# 📘 Trabalho – Introdução à Lógica (Prolog)

Repositório contendo a implementação dos três níveis do trabalho da disciplina **Introdução à Lógica**, ministrada pela professora **Érica Carvalho**.  
O projeto utiliza **SWI-Prolog** e está dividido em:  
- **Nível 1:** Fundamentos de Prolog  
- **Nível 2:** Inferência recursiva e uso de listas  
- **Nível 3:** Sistema especialista interativo  

---

## 📁 Estrutura do Repositório

```
/
├── nivel1/
│   └── nivel1.pl
│
├── nivel2/
│   └── nivel2.pl
│
├── nivel3/
│   └── nivel3.pl
│
└── README.md
```

---

## 📅 Informações Gerais

- **Disciplina:** Introdução à Lógica  
- **Professora:** Érica Carvalho  
- **Entrega:** 04/12 até as 23:59 (via SIGAA)  
- **Apresentações:** 05/12 e 10/12  
- **Valor total:** 15 pontos  

---

# 🔹 Nível 1 – Fundamentos de Prolog (4 pts)

### **Objetivo**  
Introduzir os conceitos básicos da linguagem Prolog por meio da criação de fatos, regras simples e consultas sobre um domínio específico.

### **Conteúdo Implementado**
O arquivo `nivel1.pl` contém:
- Fatos sobre **gênero**, **parentesco** e **relações familiares**.  
- Regras para:
  - Determinar quem gerou quem (`gerou/2`)
  - Identificar filhos (`filho/2`)
  - Descobrir avós (`avo/2`)
  - Verificar irmãos (`irmao/2`)

### **Requisitos Atendidos**
- Mínimo de **10 fatos**  
- Pelo menos **3 regras**  
- Consultas testadas no ambiente SWI-Prolog  

---

# 🔹 Nível 2 – Inferência Recursiva e Listas (5 pts)

### **Objetivo**  
Criar regras envolvendo **recursão** e **manipulação de listas** para realizar inferência lógica mais avançada.

### **Conteúdo Implementado**
O arquivo `nivel2.pl` contém:
- Mapa de cidades e distâncias entre elas (grafo).
- Regras para:
  - Conectividade bidirecional (`conectado/3`)
  - Descoberta de rotas (`rota/4`)
  - Navegação recursiva entre cidades (`viajar/5`)
  - Verificação de rotas dentro de um limite de cidades (`rota_curta/3`)
- Uso de:
  - Recursão  
  - Listas (`member/2`, `reverse/2`, construção de listas)  
  - Distâncias acumuladas

### **Requisitos Atendidos**
- Pelo menos **3 regras recursivas**  
- Uso de listas e backtracking  
- Consultas com múltiplas soluções  

---

# 🔹 Nível 3 – Sistema Especialista (6 pts)

### **Objetivo**  
Desenvolver um sistema especialista simples que interaja com o usuário, fazendo perguntas e tomando decisões com base nas respostas.

### **Conteúdo Implementado**
O arquivo `nivel3.pl` contém:
- Sistema especialista voltado para **diagnóstico básico de problemas em veículos**.
- Base de fatos sobre sintomas (`sintoma/1`).
- Regras de decisão:
  - `problema(nao_liga)`
  - `problema(aquecendo)`
  - `problema(fumaça)`
- Interação com o usuário usando:
  - `write/1` e `writeln/1`
  - `read/1`
- Encadeamento lógico de condições (if-then-else) para determinar o diagnóstico.

### **Requisitos Atendidos**
- Mínimo de **5 regras de decisão**  
- Encadeamento lógico estruturado  
- Simulação de interação e decisões baseadas em respostas  
- Fluxo completo de perguntas e conclusões  

---

# 📝 Critérios de Avaliação

| Critério                                | Peso |
|-----------------------------------------|------|
| Corretude lógica (fatos e inferências) | 40%  |
| Clareza e organização do código        | 20%  |
| Variedade e coerência das consultas    | 20%  |
| Documentação e explicação              | 20%  |

---

# ▶️ Como Executar

1. Instale o **SWI-Prolog**:  
   https://www.swi-prolog.org/

2. No terminal, entre na pasta do nível desejado:

```
cd nivel1
swipl nivel1.pl
```

3. Execute suas consultas normalmente:

```
?- comando_aqui.
```

---
