# lim x --> 0+   od   |x| / x
# lim x --> 0-   od   |x| / x
# lim = limit(1 arg: na cemu se primenjuje, 2 arg: sta tezi, 3 arg: gde tezi,4 arg: pozicija + ili -)
# unutar command windowa:  pkg load symbolic

limit(abs(x)/x,x,0,'right') # 'right' za plus, 'left' za minus # vraca simbolicku jedinicu
double(limit(abs(x)/x,x,0,'right')); # vraca numericku jedinicu

