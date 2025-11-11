# 🧮 Método de Newton–Raphson em Scilab

## 📘 Descrição

Este projeto implementa um **algoritmo numérico** em **Scilab** para determinar os **zeros de uma função não linear** utilizando o **método de Newton–Raphson**.  
A função escolhida é:

\[
f(x) = 10⁻⁶·ln(x + 1) + 4·10⁻⁶·x² − 10⁻⁵·x − 0.6 = 0
\]

O método de Newton–Raphson é uma técnica iterativa que utiliza a função e sua derivada para aproximar raízes com alta precisão, sendo amplamente aplicada em problemas de engenharia, física e computação científica.

---

## ⚙️ Estrutura do Código

### 1. Definição da Função e Derivada
```scilab
deff('y = f(x)', 'y = 1d-6 * log(x + 1) + 4d-6 * x.^2 - 1d-5 * x - 0.6')
deff('y = df(x)', 'y = 1d-6 / (x + 1) + 8d-6 * x - 1d-5')
```

### 2. Parâmetros Iniciais
```scilab
x = 200.0      // Valor inicial
tol = 0.001    // Tolerância para o erro
maxiter = 100  // Número máximo de iterações
iter = 0       // Contador de iterações
```

### 3. Estrutura Iterativa do Método
```scilab
while iter < maxiter
    iter = iter + 1
    dfx = df(x)
    if dfx == 0 then
        disp("Derivada zero, método falhou.")
        break
    end
    xnew = x - f(x) / dfx
    disp("Iteração " + string(iter) + ": x = " + string(xnew) + ", f(x) = " + string(f(xnew)))
    if abs(f(xnew)) < tol | abs(xnew - x) < tol then
        disp("Raiz encontrada: " + string(xnew))
        break
    end
    x = xnew
end
if iter >= maxiter then
    disp("Máximo de iterações atingido sem convergência.")
end
```

## 🧠 Conceito Matemático

O método de Newton–Raphson busca a raiz de uma função por meio da aproximação sucessiva de tangentes.
Dada uma estimativa inicial x0 , as próximas aproximações são obtidas por:
xn+1​=xn​−f′(xn​)f(xn​)​

## 🖥️ Execução

1. Abrir o Scilab
Inicie o Scilab pelo terminal:
```
scilab
```

2. Executar o Script
Salve o código em um arquivo, por exemplo
```
newton_raphson.sce
```

Em seguida, execute dentro do Scilab:
```
exec('newton_raphson.sce', -1)
```

## 📚 Referências
 * BURDEN, R. L.; FAIRES, J. D. Análise Numérica. Cengage Learning.
 * Documentação Oficial do Scilab
 * Método de Newton–Raphson – MathWorld

## Autor
 - Lucas Oliveira
 - Ciências da Computação
 - Universidade Anhanguera - 2024 / 2028
 - 📧 Contato: **lucas.luki3007@gmail.com**