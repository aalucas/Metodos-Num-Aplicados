// Definição da função f(x)
deff('y = f(x)', 'y = 1d-6 * log(x + 1) + 4d-6 * x.^2 - 1d-5 * x - 0.6')

// Definição da derivada f'(x)
deff('y = df(x)', 'y = 1d-6 / (x + 1) + 8d-6 * x - 1d-5')

// Parâmetros iniciais
x = 200.0
tol = 0.001
maxiter = 100
iter = 0

// Imprime iteração inicial
disp("Iteração " + string(iter) + ": x = " + string(x) + ", f(x) = " + string(f(x)))

// Loop de iteração
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