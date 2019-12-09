population = c() #non-mutated population
Mpopulation = c() #mutated population
population[1] = 99 #initial
Mpopulation[1]=1 #initial

rN=0.1 #growth rates
rM=0.1

k=1000000 #carrying capacity

#growth without medicine present
for(i in 1:249){
  population[i+1] = population[i] + rN*population[i]*(1-((population[i]+Mpopulation[i])/k))
  Mpopulation[i+1] = Mpopulation[i] + rM*Mpopulation[i]*(1-((population[i]+Mpopulation[i])/k))
}

# new growth rates now that medicine is added
rN2 = -0.10
rM2 = 0.05

#population growth/loss when medicine is present
for(i in 249:999){
  population[i+1] = population[i] + rN2*population[i]*(1-((population[i]+Mpopulation[i])/k))
  Mpopulation[i+1] = Mpopulation[i] + rM2*Mpopulation[i]*(1-((population[i]+Mpopulation[i])/k))
}

time= c()

time = seq(1,1000)


#graphing
plot(time,population,type="l",col="red",)
lines(time,Mpopulation,col="green")
legend("right", legend=c("Non-Mutated", "Mutated"),
       col=c("red", "green"), lty=1:1, cex=0.8)

