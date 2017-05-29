class CalculatorClass:
    def sum(self,num_list):
      list = []
      suma = 0

      for i in range(5):
       num_list=int(input("ingrese un numero\n"))  
       list.append(num_list)



      for j in list:
       suma += int(j)

      print('La suma es:',suma)


obj = CalculatorClass()
print(obj.sum(0))
