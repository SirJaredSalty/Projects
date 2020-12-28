"""
File:        proj1.py
Author:      Jared Soltas
Date:        10/12/2019
Section:     11
E-mail:      jsoltas1@umbc.edu
Description: This program will simulate a shopping experience
             where the user must buy grocerys from a store
             without exceeding their funds. They must then
             bake different items in the correct order.
"""

# Spending limit
STARTING_FUNDS = 80.0

# Cost of each item bought
FLOUR_COST_PER_BAG = 2.5
EGGS_COST_PER_CRATE = 1.9
YEAST_COST_PER_BAG = 3.25
BUTTER_COST_PER_PACK = 1.25
MILK_COST_PER_JUG = 2.75

# Conversions to know how much is
# needed to buy for the recipes
GALLONS_MILK_PER_JUG = 1.0
EGGS_PER_CRATE = 24.0
TBSP_BUTTER_PER_PACK = 64.0
CUPS_FLOUR_PER_BAG = 25.0
CUP_YEAST_PER_BAG = 6.0
CUPS_IN_GALLON = 16
TSP_IN_CUP = 48

# Amount of each item needed for recipes
FLOUR_REQUIRED = 48.0 + 112.5
EGGS_REQUIRED = 12.0 + 60.0
BUTTER_REQUIRED = 144.0
YEAST_REQUIRED = 39 + 50
MILK_REQUIRED = 18.0

# Sentinel in go_shopping function
END = "NOTHING"


def print_task_list(tasks_remaining, next_task):
    """
       Function prints the remaining tasks to bake.
       :param tasks_remaining: Number of tasks left to do
       :param next_task: Integer of the task the user wants to do next
       """
    # Constant strings with the tasks
    remaining_tasks = "Here are your remaining tasks of the day"
    task_one = "Make the macarons"
    task_two = "Make the croissants"
    task_three = "Bake the baguettes"

    # Prints the remaining tasks left to do
    if tasks_remaining == 3:
        print(remaining_tasks)
        print("1 -  ", task_one)
        print("2 -  ", task_two)
        print("3 -  ", task_three)

    elif tasks_remaining == 2 and next_task == 1:
        print(remaining_tasks)
        print("1 -  ", task_two)
        print("2 -  ", task_three)

    elif tasks_remaining == 2 and next_task == 2:
        print(remaining_tasks)
        print("1 -  ", task_one)
        print("2 -  ", task_three)

    elif tasks_remaining == 1:
        print(remaining_tasks)
        print("1 -  ", task_three)

    if tasks_remaining <= 0:
        print("All done!  Let's hope we've PRUEven ourselves worthy.")


def is_valid_input(task_index, valid_number):
    """
    Checks if the number for the baking option
    with the remaining number of tasks is valid.
    Also checks for a positive integer of input.
    :param task_index: Index indicating baking options left
    :param valid_number: Integer of the task the user wants to bake
    :return: Integer of task if true, otherwise false
    """
    negative_sign = "-"
    valid_number_str = str(valid_number)
    # Checks for a negative sign
    if negative_sign in valid_number_str:
        return False
    # Checks that a task isn't performed which isn't allowed
    elif valid_number != 1 and valid_number >= task_index:
        return False
    return valid_number


def bake():
    """
    Function gets input for which food they want to bake.
    Makes sure tasks are performed in the proper order.
    Calls the is_valid_input() print_task_list() function.
    """
    print("We have everything we need!  Ready!  Set!  Bake!")
    print("Here are your remaining tasks of the day")
    print("1 -  Begin the baguette dough\n2 -  Make the macarons"
          "\n3 -  Make the croissants\n4 -  Bake the baguettes")

    # Remaining number of baking tasks to do
    task_count = 4
    # Loops until all tasks are complete
    while task_count > 0:
        # Passes into is_valid_input() to make sure the number is valid
        next_task = is_valid_input(task_count, (int(input(
            "What action would you like to cross off your list next? "))))
        # Special case loop when the dough hasn't been made yet
        while next_task != 1 and task_count == 4:
            next_task = is_valid_input(task_count, (int(input(
                "We should really start the baguette dough first! "))))
        # Loops until the user enters a valid task input
        while not next_task:
            next_task = is_valid_input(task_count, (int(input(
                "Whoa, we should probably do everything else first! "))))

        task_count -= 1
        # Passes the remaining task_count and the next_task the user wants
        print_task_list(task_count, next_task)


def check_items_enough(eggs, flour, butter, yeast, milk, cost):
    """
      Function verifies that the user bought enough of
      each item. Calls bake() function if all items are
      bought.
      :param eggs: Crates of eggs bought
      :param flour: Bags of flour bought
      :param butter: Packs of butter bought
      :param yeast: Bags of yeast bought
      :param milk: Jugs of milk bought
      :param cost: True/false if user exceeded starting funds or not
      """

    # Initialize you_lost as False
    you_lost = False
    # Items left that user didn't buy
    items_left = 0
    # Calculates the small measurements of food the user bought
    eggs_bought = eggs * EGGS_PER_CRATE
    flour_cups_bought = flour * CUPS_FLOUR_PER_BAG
    butter_tbsp_bought = butter * TBSP_BUTTER_PER_PACK
    yeast_tsp_bought = yeast * CUP_YEAST_PER_BAG * TSP_IN_CUP
    milk_cups_bought = milk * GALLONS_MILK_PER_JUG * CUPS_IN_GALLON

    # If statement is used if the user doesn't buy enough food
    if eggs_bought < EGGS_REQUIRED:
        # Adds to the items_left total
        items_left += 1
        # Prints the amount still needed
        eggs_difference = EGGS_REQUIRED - eggs_bought
        print("You didn't buy enough eggs! We needed:",
              eggs_difference, "more eggs")
        # Sets you_lost to True
        you_lost = True

    if flour_cups_bought < FLOUR_REQUIRED:
        items_left += 1
        flour_difference = FLOUR_REQUIRED - flour_cups_bought
        print("You didn't buy enough flour! We needed:",
              flour_difference, "more cups")
        you_lost = True

    if butter_tbsp_bought < BUTTER_REQUIRED:
        items_left += 1
        butter_difference = BUTTER_REQUIRED - butter_tbsp_bought
        print("You didn't buy enough butter! We needed:",
              butter_difference, "more tbps")
        you_lost = True

    if yeast_tsp_bought < YEAST_REQUIRED:
        items_left += 1
        yeast_difference = YEAST_REQUIRED - yeast_tsp_bought
        print("You didn't buy enough yeast! We needed:",
              yeast_difference, "more tsp")
        you_lost = True

    if milk_cups_bought < MILK_REQUIRED:
        items_left += 1
        milk_difference = MILK_REQUIRED - milk_cups_bought
        print("You didn't buy enough milk! We needed:",
              milk_difference, "more cups")
        you_lost = True

    # Prints if you_lost is True
    if you_lost:
        print("You did not buy enough ingredients to even begin baking."
              " You are a failure of all sorts. Good day.")

    # Calls bake() only if cost is True and user bought all food items
    if cost and items_left == 0:
        bake()


def is_valid_shopping(valid_number):
    """
    Function checks if the number of items
    bought is a valid positive number.
    :param valid_number: Integer for number of bought items
    :return: Integer of bought items if true, otherwise False
    """
    negative_sign = "-"
    valid_number = str(valid_number)
    # Checks for a negative sign in the valid_number string
    if negative_sign in valid_number:
        return False
    return int(valid_number)


def go_shopping():
    """
     Function gets input for how much of each item the user
     wants to buy from the store. Keeps track of the
     total spent and if it exceeds the starting funds.
     Calls is_valid_shopping() and check_items_enough()
     functions.
     """
    # Total cost of food the user bought
    total_cost = 0
    # Starts the items bought at 0 in case the user doesn't buy them
    eggs_crates = 0
    flour_bags = 0
    butter_packs = 0
    yeast_bags = 0
    milk_jugs = 0
    food_purchase = ""
    # Loops until funds are gone or the user enters "NOTHING"
    while food_purchase != END and total_cost < STARTING_FUNDS:
        food_purchase = input("What would you like to purchase? "
                              " (ENTER 'NOTHING' to leave store) ")

        if food_purchase.lower() == "eggs":
            # Passes input to is_valid_shopping() make sure it isn't negative
            eggs_crates = is_valid_shopping \
                (int(input("How many crates of eggs would you like? ")))
            # Loops until the input is valid
            while not eggs_crates:
                eggs_crates = is_valid_shopping \
                    (int(input("Please enter a valid number ")))
            # Adds to the total cost variable
            total_cost += eggs_crates * EGGS_COST_PER_CRATE

        elif food_purchase.lower() == "flour":
            flour_bags = is_valid_shopping \
                (int(input("How many bags of flour would you like? ")))
            while not flour_bags:
                flour_bags = is_valid_shopping \
                    (int(input("Please enter a valid number ")))
            total_cost += flour_bags * FLOUR_COST_PER_BAG

        elif food_purchase.lower() == "butter":
            butter_packs = is_valid_shopping \
                (int(input("How many packs of butter would you like? ")))
            while not butter_packs:
                butter_packs = is_valid_shopping \
                    (int(input("Please enter a valid number ")))
            total_cost += butter_packs * BUTTER_COST_PER_PACK

        elif food_purchase.lower() == "yeast":
            yeast_bags = is_valid_shopping \
                (int(input("How many bags of yeast would you like? ")))
            while not yeast_bags:
                yeast_bags = is_valid_shopping \
                    (int(input("Please enter a valid number ")))
            total_cost += yeast_bags * YEAST_COST_PER_BAG

        elif food_purchase.lower() == "milk":
            milk_jugs = is_valid_shopping \
                (int(input("How many jugs of milk would you like? ")))
            while not milk_jugs:
                milk_jugs = is_valid_shopping \
                    (int(input("Please enter a valid number ")))
            total_cost += milk_jugs * MILK_COST_PER_JUG

        elif food_purchase == END:
            # Needed cost_efficient variable to stop program proceeding when
            # user buys enough items but simultaneously runs out of of money.
            cost_efficient = True
            check_items_enough(eggs_crates, flour_bags, butter_packs,
                               yeast_bags, milk_jugs, cost_efficient)

        else:
            print("You must enter a valid item.")

        if total_cost >= STARTING_FUNDS:
            cost_efficient = False
            print("You ran out of money!")
            check_items_enough(eggs_crates, flour_bags, butter_packs,
                               yeast_bags, milk_jugs, cost_efficient)


if __name__ == '__main__':
    """
     Prints out the amount of grocerys we must buy and the
     spending limit. Calls the go_shopping() function.
     """
    print("Baker! You must buy the following with $80:")
    print("\n\tFor 300 croissants:\n\t  48 cups of flour\n\t  12 eggs\n\t  "
          "144 tbsp of butter\n\t  39 tsp of yeast\n\t  18 cups of milk")
    print("\n\tFor 600 macarons:\n\t  60 eggs")
    print("\n\tFor 100 baguettes:\n\t  112.5 cups of flour\n\t  "
          "50 tsp of yeast")
    print("\nWelcome to the supermarket!")
    # Calls go_shopping() function to start
    go_shopping()