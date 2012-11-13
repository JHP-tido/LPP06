require 'ratlib'
require 'matriz'

describe "ratlib" do

before (:each) do
	@uno_uno=Ratnum.new(1,2)
	@uno_dos=Ratnum.new(3,4)
	@dos_uno=Ratnum.new(5,6)
	@dos_dos=Ratnum.new(7,8)
	@a=Ratnum.new(11,8)
	@b=Ratnum.new(19,12)
	@c=Ratnum.new(19,12)
	@d=Ratnum.new(11,8)
	@e=Ratnum.new(7,8)
	@f=Ratnum.new(33,32)
	@g=Ratnum.new(55,48)
	@h=Ratnum.new(64,89)
	@muestra1=Matriz.new(2,2,@uno_uno,@uno_dos,@dos_uno,@dos_dos)
	@muestra2=Matriz.new(2,2,@dos_dos,@dos_uno,@uno_dos,@uno_uno)
	@muestra3=Matriz.new(2,2,@a,@b,@c,@d)
	@muestra4=Matriz.new(2,2,1,2,3,4)
	@muestra5=Matriz.new(2,2,4,3,2,1)
	@muestra6=Matriz.new(2,2,5,5,5,5)
	@muestra7=Matriz.new(2,2,7,10,15,22)
	@muestra8=Matriz.new(2,2,@e,@f,@g,@h)
	@muestra9=Matriz.new(2,2,@uno_uno,@uno_uno,@uno_uno,@uno_uno)
end

it "Se debe poder sumar dos matrices de enteros" do
	(@muestra4+@muestra5).should==@muestra6
end

it "Se debe poder sumar dos matrices de racionales" do
	(@muestra1+@muestra2).should==@muestra3
end

it "Se debe poder multiplicar una matriz de enteros" do
	(@muestra4*@muestra4).should==@muestra7
end

it "Se debe poder multiplicar dos matrices de racionales" do
	(@muestra1*@muestra1).should==@muestra8
end

end
