##Análise do balanço orçamentário de Santa Bárbara d'oeste entre os anos de 2010 e 2018
#José Henrique Rasteiro Gaspar

options(scipen = 999)

Anos <- c(2010,2011,2012,2013,2014,2015,2016,2017,2018)

Receitas_realizadas <- c(265426051.01,311831896.54,329024430.85,366781607.99,404205053.26,408248854.04,459095140.23,487316684.97,538295988.16)

Despesas_empenhadas <- c(269683643.31,315969561.24,352444085.43,377384921.45,410107072.27,446409305.16,468251035.24,508262755.16,548971164.25)

# *Considerando o refinanciamento.

# **Considerando o refinanciamento e a amortização da dívida.

#Receitas realizadas - despesas empenhadas
Déficit <- c(4257592.30,4137664.70,23419654.58,10603313.46,5902019.01,38160451.12,9155895.01,20946070.19,10675176.09)

#circulante e não circulante
Passivo <- c(61757998.16,56228949.43,62015985.36,50388268.17,65871805.39,97520018.63,114775422.20,131064455.46,163104290.22)

#circulante e não circulante
Ativo <- c(234301308.55,268439252.73,276698983.88,774955007.71,1296891619.10,1382334929.01,1312423095.66,1323631111.06,1464875657.91)

atpa <- data.frame(Passivo,Ativo)

ggplot(atpa,aes(x=Anos))+
  geom_line(aes(y=Ativo,color="Ativo"))+
  geom_line(aes(y=Passivo,color="Passivo"))+
  labs(y="Ativo X Passivo", x="Anos",
       title="Comparação do ativo e do passivo",
       subtitle="entre os anos de 2010 e 2018",
       caption="Portal da transparência do município de Santa Bárbara d'Oeste")

#bens imoveis
Imoveis <- c(59342857.54,59348893.76,66536636.88,553557386.07,1053944405.25,1086659511.04,988077268.38,1015881420.43,1063087003.21)

ativo_imovel <- data.frame(Ativo,Imoveis)

ggplot(ativo_imovel,aes(x=Anos))+
  geom_line(aes(y=Imoveis,color="Imoveis"))+
  geom_line(aes(y=Ativo,color="Ativo"))+
  labs(x="Anos",y="Imoveis X Ativo",
       title="Comparação do ativo total e do ativo imovel",
       subtitle="Entre os anos de 2010 e 2018",
       caption="Fonte: Portal da transparência do município de Santa Bárbara d'Oeste")

#Ativo circulante (curto prazo)
Ativo_financeiro <- c(44754605.86,47119495.20,34726067.65,41527989.12,65187267.56,36201191.35,41924988.16,43735219.22,45758917.08)

#Passivo circulante (curto prazo)
Passivo_financeiro <- c(28894934.31,33233598.30,42323326.31,33115777.82,49146017.79,79210776.30,83103815.61,88957444.84,83617560.33)

ativo_passivo_circulante <- data.frame(Ativo_financeiro,Passivo_financeiro)

ggplot(ativo_passivo_circulante,aes(x=Anos))+
  geom_line(aes(y=Ativo_financeiro,color="Ativo financeiro"))+
  geom_line(aes(y=Passivo_financeiro,color="Passivo financeiro"))+
  labs(y="Ativo Financeiro X Passivo Financeiro", x="Anos",
       title="Comparação do ativo e do passivo financeiro",
       subtitle="Município de Santa Bárbara d'Oeste",
       caption="Fonte: Portal da transparência do município de Santa Bárbara d'Oeste")
  
Dados <- data.frame(Anos,Receitas_realizadas,Despesas_empenhadas,Déficit,Passivo)

superavit <- c(Receitas_realizadas>Despesas_empenhadas)

ggplot(Dados,aes(x=Anos))+
  geom_line(aes(y=Receitas_realizadas, color="Receitas Realizadas"))+
  geom_line(aes(y=Despesas_empenhadas,color="Despesas Empenhadas"))+
  labs(title= "Evolução das receitas realizadas e despesas empenhadas",
       subtitle= "Município de Santa Bárbara d'Oeste",
       x="Anos", y= "Receitas Realizadas X Despesas Empenhadas",
       caption = "Fonte: Portal da transparência do município de Santa Bárbara d'Oeste")

ggplot(Dados,aes(x=Anos, y=Passivo))+
  geom_bar(stat="identity")+
  labs(title="Variação do passivo entre os anos de 2010 e 2018",
       subtitle="Município de Santa Bárbara d'Oeste",
       caption = "Fonte: Portal de transparência de Santa Barbara d'Oeste")



