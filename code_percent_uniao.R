##Porcentagem de vitórias do União Barbarense FC entre os anos de 2009 e 2019
#José Henrique Rasteiro Gaspar



#PARTE 1 - recolher os dados

anos<-c("2009","2010","2011","2012","2013","2014","2015","2016","2017","2018","2019")

derrotas<-c(9,10,8,9,18,18,11,9,14,10,6)

vitórias<-c(7,10,3,12,4,11,15,9,4,4,3)

empates<-c(3,5,7,6,8,8,9,3,1,5,2)

total_de_jogos<-c(19,25,18,27,30,37,35,22,19,19,11)

campeonato<-c("Série A2","Série A2","Série A2","Série A2",
              "Série A1 + Copa Paulista","Série A2 + Copa Paulista",
              "Série A2 + Copa Paulista","Série A2",
              "Série A2","Série A3","Paulista Série B")


União_Barbarense<-data.frame(anos,derrotas,vit?rias,empates,total_de_jogos,campeonato)

##PARTE 2 - plotar os dados

ggplot(data=União_Barbarense,aes(x=anos,y=(vitórias/total_de_jogos)))+
  geom_bar(stat="identity",aes(fill=campeonato))+
    ggtitle("Porcentagem de vitórias do União Barbarense FC entre os anos de 2009 e 2019",
          subtitle="Fonte: matchendirect.fr")+
  scale_x_discrete(name="Anos")+
  scale_y_continuous(name="Porcentagem de vitórias",labels=scales::percent)+
  theme(legend.key.size = unit(1,"lines"))

#PARTE 3 - tirar a média e o desvio padrão

median((vitórias/total_de_jogos)*100)

sd((vitórias/total_de_jogos)*100)

                                            
                                        ##FIM