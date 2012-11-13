class Ratnum

include Comparable
include Enumerable

def initialize(a,b)
@numerador, @denominador = a,b
end

def num()
@numerador
end

def den()
@denominador
end

#def mostrar
#@a/@b
#end

def numerador
@numerador
end

def denominador
@denominador
end

def racional()
return "#{@numerador}/#{@denominador}"
end

def flot()
return ((@numerador.to_f)/(@denominador.to_f))
end

def == (ratnum1)
if(ratnum1.num() == @numerador and (ratnum1.den() == @denominador))
	return true
else
	return false
end 
end

def abs
if @numerador < 0
	return Ratnum.new(-@numerador,@denominador)
else
	return self
end
end

def recip
return Ratnum.new(@denominador,@numerador)
end

def -@
Ratnum.new(-@numerador,@denominador)
end

def +(ratnum1)
	if (ratnum1.instance_of?(Ratnum) == true)
		aux1=(@numerador * ratnum1.den()) + (@denominador * ratnum1.num())
		aux2=@denominador * ratnum1.den()
		i=1
		aux=1
		while((i < aux1+1) and (i < aux2+1))do
			if((aux1%i==0) and (aux2%i==0))
				aux=i
			end
			i=i+1
		end
		aux1=aux1/aux
		aux2=aux2/aux
		return Ratnum.new(aux1,aux2)
	end
end

def -(ratnum1)
	if (ratnum1.instance_of?(Ratnum) == true)
		aux1=(@numerador * ratnum1.den()) - (@denominador * ratnum1.num())
		aux2=@denominador * ratnum1.den()
		i=1
		aux=1
		while((i < aux1+1) and (i < aux2+1)) do
			if((aux1%i==0) and (aux2%i==0))
				aux=i
			end
			i=i+1
		end
		aux1=aux1/aux
		aux2=aux2/aux
		return Ratnum.new(aux1,aux2)
	end
end

def *(ratnum1)
	if (ratnum1.instance_of?(Ratnum) == true)
		aux1=@numerador * ratnum1.num()
		aux2=@denominador * ratnum1.den()
		i=1
		aux=1
		while((i < aux1+1) and (i < aux2+1)) do
			if((aux1%i==0) and (aux2%i==0))
				aux=i
			end
			i=i+1
		end
		aux1=aux1/aux
		aux2=aux2/aux
		return Ratnum.new(aux1,aux2)
	end
end

def /(ratnum1)
	if (ratnum1.instance_of?(Ratnum) == true)
		aux1=@numerador * ratnum1.den()
		aux2=@denominador * ratnum1.num()
		i=1
		aux=1
		while((i < aux1+1) and (i < aux2+1)) do
			if((aux1%i==0) and (aux2%i==0))
				aux=i
			end
			i=i+1
		end
		aux1=aux1/aux
		aux2=aux2/aux
		return Ratnum.new(aux1,aux2)
	end
end

def <=>(ratnum1)
	return nil unless ratnum1.instance_of? Ratnum
	aux1=@numerador.to_f / @denominador.to_f
	aux2=ratnum1.num().to_f / ratnum1.den().to_f
	return aux1 <=> aux2
end

end

