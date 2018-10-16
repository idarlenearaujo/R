# 1
media = 60000
desvio = 8300

qnorm(0.02, media, desvio)

# 2
media = 2000
desvio = 80

qnorm(0.05, media, desvio)
qnorm(0.95, media, desvio)

pnorm(2200, media, desvio) - pnorm(2100, media, desvio)

# I   - F
# II  - V
# III - V

# 3
n = 1000
p = 823/1000
inf = 0.799344
sup = 0.846656
# c = ?

x = 2*pnorm((p - inf)/sqrt(p*(1-p)/n)) - 1
round(100*x, digits = 2)

# 4
an = 4
san = 1600
sp = 2
ssp = 1800
cc = 1
scc = 2750
mg = 1
smg = 5000

salario_media = ((an * san) + (sp * ssp) + (cc * scc) + (mg * smg)) / (an+sp+cc+mg)
salario_media

# 5
desvio = 1.87
n = 17
media = 36.3
# x > 35

z = (media - 35) / (desvio/sqrt(n))
p_value = pnorm(z, 0, 1, lower.tail = F)
p_value

# 6
n = 50
p = 10/50
prop.test(10, 50, 0.1, alternative = 'greater', correct = F)

# 7
tsum.test(18, 2.8, 20, 21, 3, 18, var.equal = T)

# 8
n = 10
notas = c(21, 25, 23, 20, 18, 21, 18, 19, 22, 24)

media = mean(notas)
desvio = sd(notas)
cbind(media, desvio)

# 9
# idade - quantitativa
# renda - quantitativa
# estado civil - qualitativa
# escolaridade - qualitativa
# aparelhos - quantitativo
# satisfação - qualitativo

# 10
media = 2.5
desvio = 0.5
# x > 3.5
pnorm(3.5, 2.5, 0.5, lower.tail = F)
