import random
number = random.randint(1,25)
guess = 0
while guess < 3:
    playerGuess = input("Guess a number between one and twenty-five")
    if (int(playerGuess) == number):
        print("You Guessed Correctly!")
        break
    elif(int(playerGuess) > number):
        print("Your Guess was Too High!")
        guess +=1
    elif(int(playerGuess) < number):
        print("Your Guess was Too Low!")
        guess +=1
print("Game Over! The number was,", number)