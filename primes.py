"""
Your module documentation here
"""

class PrimeClass:

    """
    Your class documentation here
    """
 def IsPrime(self,num_int):
       """
        Your method documentation here
        """ 

  num_int=int(input("ingrese un numero\n"))  
  if(num_int%2==0):
          print(True)
           

  else:
           print(False)
           

        
obj = PrimeClass()
print(obj.IsPrime(0))
