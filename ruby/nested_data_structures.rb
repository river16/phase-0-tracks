#Release1
#design and build a nested data structure to represent a real-world construct.

#Release2
#print a few individual pieces of deeply nested data from the structure, 
#showing that you know how to use multiple indexes or hash keys (or both) to access nested items. 
#Try to demonstrate a few different types of access.

#Asian Fusion Menu

menu = {
	appetizers: ["spring rolls", "coconut soup", "wonton soup"],
	entrees: {
		salads: ["papaya salad", "tea leaf salad", "mango salad"],
		dumplings: ["mushroom", "curry", "spinach"],
		noodles: ["garlic noodles", "chow fun", "emein"]
	}
}

menu[:entrees][:noodles].first

menu[:entrees][:salads][3]

menu[:entrees][:dumplings].last
