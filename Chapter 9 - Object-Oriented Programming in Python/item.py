import csv

class Item:
    pay_rate = 0.8 #a rate de pagamento depois do desconto de 20%
    all = []
    def __init__(self, name: str, price: float, quantity=0):
        #validando os argumentos recebidos
        assert price >= 0, f"Preço {price} não é igual ou maior que zero."
        assert quantity >= 0, f"Quantidade {quantity} não é igual ou maior que zero."

        #definindo para o self objeto
        self.__name = name
        self.__price = price
        self.quantity = quantity

        #ações para executar
        Item.all.append(self)

    @property
    def price(self):
        return self.__price

    def apply_discount(self):
        self.__price =  self.__price * self.pay_rate
    
    def aplly_increment(self, increment_value):
        self.__price = self.__price + self.__price * increment_value

    @property
    #property = atributo para apenas-leitura
    def name(self):
        return self.__name
    
    @name.setter
    def name(self, value):
        if len(value) > 15:
            raise Exception("O nome é grande demais!")
        else:
            self.__name = value

    
    def calculate_total_price(self):
        return self.__price * self.quantity
    
    @classmethod
    def instantiate_from_csv(cls):
        with open(r'C:\Users\raque\OneDrive\Área de Trabalho\TUTO\OOP\items.csv', 'r') as f:
            reader = csv.DictReader(f)
            items = list(reader)
        
        for item in items:
            #print(item)
            Item(
                name = item.get('name'),
                price = float(item.get('price')),
                quantity = int(item.get('quantity')),
            )
    @staticmethod
    def is_integer(num):
        #contaremos os floats que são .0
        #por exemplo 10.0, 5.0
        if isinstance(num, float):
            #contando os floats que são .0
            return num.is_integer()
        elif isinstance(num, int):
            return True
        else:
            return False
        
    def __repr__(self):
        return f"{self.__class__.__name__}('{self.name}', {self.__price}, {self.quantity})"
    
    def __connect(self, smpt_server):
        pass
    
    def __prepare_body(self):
        return f'''
        Olá.
        Nós temos {self.quantity} do produto {self.name}.
        '''
    def __send(self):
        pass
    
    def send_email(self):
        self.__connect('')
        self.__prepare_body()
        self.__send()



