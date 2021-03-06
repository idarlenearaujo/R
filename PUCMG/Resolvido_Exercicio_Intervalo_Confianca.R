# 1
# var conhecido
# M�dia
desvio = 25
n = 20
media = 1014
c = 0.95

inferior = media - qnorm((1 - c)/2, 0, 1, lower.tail = F) * desvio/sqrt(n)
superior = media + qnorm((1 - c)/2, 0, 1, lower.tail = F) * desvio/sqrt(n)

cbind(inferior, superior)

# 2
# var desconhecido -> calcular desvio amostral
# M�dia
n = 5
c = 0.99
vetor_vigas = c(230.33, 233.05, 232.58, 229.48, 232.58)
media = mean(vetor_vigas)
desvio_amostral = sd(vetor_vigas)

inferior = media - qt((1 - c)/2, n - 1, lower.tail = F) * desvio_amostral/sqrt(n)
superior = media + qt((1 - c)/2, n - 1, lower.tail = F) * desvio_amostral/sqrt(n)

cbind(inferior, superior)

# 3
# Propor��o
p = 13/300
n = 300
c = 0.9

inferior = p - qnorm((1 - c)/2, 0, 1, lower.tail = F) * sqrt(p*(1 - p)/n)
superior = p + qnorm((1 - c)/2, 0, 1, lower.tail = F) * sqrt(p*(1 - p)/n)

cbind(inferior, superior)

# 4
# Descobrir confian�a
n = 1000
p = 823/1000
inf = 0.799344
sup = 0.846656

x = (sup - p)/sqrt(p*(1 - p)/n)
alfa = 2*pnorm(x)
confianca = round(100*(1 - alfa), digits = 1)
confianca

# 5
# Var desconhecido
# M�dia
n = 16
media = 60139.7
desvio_amostral = 3645.94
c = 0.95

inferior = media - qt((1 - c)/2, n - 1, lower.tail = F) * desvio_amostral/sqrt(n)
superior = media + qt((1 - c)/2, n - 1, lower.tail = F) * desvio_amostral/sqrt(n)

cbind(inferior, superior)

# Curiosidade
# Para descobrir o intervalo de confian�a correto deve-se prestar muita aten��o se
# o desvio padr�o informado � da popula��o (default) ou da amostra (qt(), segunda op��o)
