require 'ratlib.rb'

class Matriz
	
	def initialize(m,n,*elementos)
		@m=m
		@n=n
		@matriz=Array.new(m,nil)
		i=0
		while(i<n)do
			@matriz[i]=Array.new(n,nil)
			i=i+1
		end
		
		i=0
		while(i<m)do
			j=0
			while(j<n)do
				@matriz[i][j]=elementos.shift
				j=j+1
			end
			i=i+1
		end
	end

	def m
		return @m
	end

	def n
		return @n
	end

	def get_matriz(i,j)
		return @matriz[i][j]
	end

	def set_matriz(i,j,aux)
		@matriz[i][j]=aux
	end

	def ==(other)
		if(other.instance_of?(Matriz)==true)
			valido=false
			i=0
			while(i<m)do
				j=0
				while(j<n)do
					if(@matriz[i][j]==other.get_matriz(i,j))
						valido=1
					end
					j=j+1
				end
				i=i+1
			end
		end
		return valido
	end

	def +(other)
		if((other.instance_of?(Matriz)==true) and (@m==other.m) and (@n==other.n))
			asd=Matriz.new(@m,@n)
			i=0
			while(i<@m)do
				j=0
				while(j<@n)do
					aux=0
					aux=@matriz[i][j]+other.get_matriz(i,j)
					asd.set_matriz(i,j,aux)
					j=j+1
				end
				i=i+1
			end
			return asd
		end
	end

	def *(other)
		if((other.instance_of?(Matriz)==true) and (@n==other.m))
			i=0
			asd=Matriz.new(@m,other.n)
			while(i<@m)do
				j=0
				while(j<other.n)do
					k=0
					asd.set_matriz(i,j,0)
					while(k<@n)do
						aux=(@matriz[i][k]*other.get_matriz(k,j))+asd.get_matriz(i,j)
						asd.set_matriz(i,j,aux)
						k=k+1
					end
					j=j+1
				end
				i=i+1
			end
			return asd
		end
	end

	def coerce(other)
		return[self,other]
	end

end
