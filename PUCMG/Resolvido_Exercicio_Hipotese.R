# 1
# Var desconhecido
# Média
n = 5
vetor_temperatura = c(23.01, 22.22, 22.04, 22.62, 22.59)
mo = 22.5
media = mean(vetor_temperatura)
desvio = sd(vetor_temperatura)

t = (media - mo)/(desvio/sqrt(n))
valor_p = 2*pt(t, n - 1)
valor_p

# ou
t.test(vetor_temperatura, mu = 22.5)

# 2
# two simple test
tsum.test(18, 2.8, 20, 21, 3, 18, var.equal = T)

# 3
# Proporção
n_1 = 500
n1 = 385
n_2 = 400
n2 = 267

prop.test(c(n1, n2), c(n_1, n_2), correct = F)

# 4
# Var conhecido
# Média
n = 10
desvio = 1.25
media = 40.5
# x > 40

z = (media - 40)/(desvio/sqrt(n))
p_value = pnorm(z, 0, 1, lower.tail = F)
p_value

# 5
# Proporção
prop.test(6, 250, p = 0.02, alternative = 'greater', correct = F)
