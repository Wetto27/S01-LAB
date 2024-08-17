10 PRINT "Resolvendo equacoes quadraticas (ax^2 + bx + c = 0)"
20 input "Entre com o valor de a: "; a
30 input "Entre com o valor de b: "; b
40 input "Entre com o valor de c: "; c
50 delta = (b * b) - (4 * a * c)
60 if delta < 0 then print "Nao possui raizes reais" else goto 80
70 goto 120
80 x1 = (-b + sqr(delta)) / (2 * a)
90 x2 = (-b - sqr(delta)) / (2 * a)
100 print x1
110 print x2
120 end
