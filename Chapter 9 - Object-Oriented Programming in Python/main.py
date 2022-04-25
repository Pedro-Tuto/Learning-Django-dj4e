import csv
from item import Item
from phone import Phone

item1 = Item("Myitem", 750, 6)
item1.aplly_increment(0.2)
item1.apply_discount()

item1.send_email()

print(item1.price)