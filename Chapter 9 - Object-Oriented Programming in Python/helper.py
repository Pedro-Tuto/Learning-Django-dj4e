#quando usar métodos de classe e quando usar métodos estáticos?

class Item:
    @staticmethod
    def is_integer():
        '''usamos o método estático quando queremos fazer algo que não deve ser único por 
        instância, mas que tenha relação com a Classe.'''
    
    @classmethod
    def instantiate_from_someting(cls):
        '''usamos métodos de classe para instanciar coisas de uma estrutura de dados que já
        temos. '''

    