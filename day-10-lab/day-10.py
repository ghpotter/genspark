"""
Create a class with the following:
 - 2 methods
  - 1 method stores a value
  - 1 method prints a value
 - Create 5 objects from the class, each with data in each
 - Add objects to a list
 - iterate through objects to print values
"""

class lab_object():

    def set_value(self, input):
        self.value = input
    
    def print_value(self):
        if not self.value:
            print("no value found")
        else:
            print(self.value)

object1 = lab_object()
object1.set_value("a")
object2 = lab_object()
object2.set_value("b")
object3 = lab_object()
object3.set_value("c")
object4 = lab_object()
object4.set_value("d")
object5 = lab_object()
object5.set_value("e")

objects = [object1, object2, object3, object4, object5]

# # using a for loop
# for i in range(0, len(objects)):
#     objects[i].print_value()

# using a for-each loop
for o in objects:
    o.print_value()