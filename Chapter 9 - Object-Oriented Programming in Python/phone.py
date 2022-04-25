from item import Item

class Phone(Item):
    def __init__(self, name: str, price: float, quantity=0, broken_phones=0):
        #chamando super função para ter acesso a todos os atributos/métodos
        super().__init__(
            name, price, quantity
        )
        #validando os argumentos recebidos
        assert broken_phones >= 0, f"Telefones quebrados {broken_phones} não é igual ou maior que zero."
        #definindo para o self objeto
        self.broken_phones = broken_phones