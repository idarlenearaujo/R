# 1
# Distribuição Normal
media = 1500
desvio = 70

dias = qnorm(0.05, media, desvio)
prob = pnorm(1570, media, desvio) - pnorm(1500, media, desvio)

cbind(dias, prob)

# I -   F
# II -  V
# III - V

# 2
# Distribuição Normal
media = 145
desvio = 6.53

maior_frenagem = qnorm(0.015, media, desvio, lower.tail = F)
maior_frenagem

# 3
# Distribuição Poisson
# (x < 3) -> (x <= 2)
# 1 eleitor - 1 minuto ( 5 eleitores - 5 minutos )
ppois(2, 5)

# 4
# Distribuição binomial 
# (x >= 1)
p = 0.2
x = 0
n = 10
prob = pbinom(x, n, p, lower.tail = F)
prob

# 5
# Distribuição Exponencial
# Falhe em menos de 100
# lambda = 1/400
pexp(100, 1/400)


# Curiosidades:
# qnorm -> faz o processo inverso, onde encontra por meio da probabilidade o resultado
# desejado
# lower.tail = F -> pesquisa o resultado a partir da media para direita
# pnorm -> valor acumulado