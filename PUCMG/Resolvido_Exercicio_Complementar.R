# 1
p = 0.10
n = 20

# x <= 3
pbinom(3, n, prob = p)
# x = 10
dbinom(10, n, prob = p)

# --
# 2
n = 15
p = 0.80

# x = 15
dbinom(15, n, prob = p)
# x <= 13
pbinom(13, n, prob = p)
# x > 9
pbinom(9, n, prob = p, lower.tail = F)

# --
# 3
param = 1

# x >= 1
ppois(0, param, lower.tail = F)
# x <= 2
ppois(2, param)
# 2 <= x <= 4
ppois(4, param) - ppois(1, param)
# x <= 1
ppois(1, param)

# --
# 4
param = 5

# x = 0
dpois(0, param)
# x >= 1
ppois(0, param, lower.tail = F)
# 2 < x <= 5
ppois(5, param) - ppois(1, param)

# --
# 5
param = 2

# x >= 1
ppois(0, param, lower.tail = F)
# x = 2
dpois(2, param)

# --
# 6
lamb = 3

# x < 1
pexp(1, lamb)
# x > 2
pexp(2, lamb, lower.tail = F)

# --
# 7
media = 130
desvio = 20

# magro
qnorm(0.25, media, desvio)

# obeso
qnorm(0.25, media, desvio, lower.tail = F)

# --
# 8
media = 90
desvio = 20

# x < 80
# nT = 65 quantos passariam?
p = pnorm(80, media, desvio)
pessoas = round((65 * p)/100, digits = 1)

cbind(p, pessoas)

# 5%
qnorm(0.05, media, desvio)

# --
# 9
var_ = 0.01
desvio = sqrt(var_)
n = 10
media = 1.69
c = 0.95

inf = media - qnorm((1 - c)/2, 0, 1, lower.tail = F) * desvio/sqrt(n)
sup = media + qnorm((1 - c)/2, 0, 1, lower.tail = F) * desvio/sqrt(n)

cbind(inf, sup)

# --
# 10
# Var desconhecida
n = 500
media = 25
desvio = 4.25
c = 0.92

inf = media - qt((1 - c)/2, n - 1, lower.tail = F) * desvio/sqrt(n)
sup = media + qt((1 - c)/2, n - 1, lower.tail = F) * desvio/sqrt(n)

cbind(inf, sup)

# --
# 11
n = 200
p = 160/200
c = 0.95

inf = p - qnorm((1 - c)/2, 0, 1, lower.tail = F) * sqrt(p*(1 - p)/n)
sup = p + qnorm((1 - c)/2, 0, 1, lower.tail = F) * sqrt(p*(1 - p)/n)

cbind(inf, sup)

# --
# 12
inf = 35.21
sup = 35.99
c = 0.95
n = 100
desvio = 2

# media ?
media = qnorm((1 - c)/2, 0, 1, lower.tail = F) * desvio/sqrt(n) + inf
media

# c = 0.90
c = 0.90
inf = media - qnorm((1 - c)/2, 0, 1, lower.tail = F) * desvio/sqrt(n)
sup = media + qnorm((1 - c)/2, 0, 1, lower.tail = F) * desvio/sqrt(n)

cbind(inf, sup)

# --
# 13
n = 25
mo = 15
var_ = 9
desvio = sqrt(var_)
media = 14.3

z = (media - mo) / (desvio/sqrt(n))
p_value = pnorm(z, 0, 1, lower.tail = T)
p_value

# --
# 14
# Var desconhecido
n = 10
mo = 5.5
desvio = 2
media = 6
# x <= 6
t = (media - mo)/(desvio/sqrt(n))
p_value = pt(t, n - 1, lower.tail = T)
p_value

# --
# 15
prop.test(c(6, 10), c(58, 85), alternative = 'less', correct = F)

# --
# 16
usual = c(80, 90, 93, 92, 75, 92, 72, 92, 72, 87, 90, 86, 78, 97)
nova = c(100, 85, 90, 102, 90, 99, 97, 95, 100, 94, 89, 98)

t.test(usual, nova)
