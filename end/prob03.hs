twoandodds =[2]++[3,5..]
ma
factorsearch x = [z|z<-[2..x-1],mod x z ==0]

primelist =[x| x<- twoandodds , factorsearch x == []]
primeList x = take x primelist

primeList' y = [z|z <- primeList (y+3),z< (y+1)]
primefactorsearch x =[y|y<-factorsearch x ,factorsearch y ==[]]

prob03 x = maximum (primefactorsearch 600851475143)
           

