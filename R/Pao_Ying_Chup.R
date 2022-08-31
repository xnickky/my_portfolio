### Pao-Ying-Chup Games !
## produced on R Langs
# by Aekkavit Leim

# Variables
actions <- c("Paper","Scissors","Rock","Quit")
win <- 0
loss <- 0
tie <- 0
 
# Collect Value from users
while(TRUE) {
    player <- as.numeric(readline("Time to choose !: Paper[1], Scissors[2], Rock[3], Quit[4]: "))
  if (player == 4) {
    print("Bye !")
  break
}

# Logical Rules
player <- actions[player]
bot <- actions[sample(1:3,1)]
if(player == bot) 
  {
    tie <- tie + 1
  } 
  else if (player == "Paper" & bot == "Scissors") 
  {
    loss <- loss + 1 
  } 
  else if (player == "Scissors" & bot == "Rock") 
  {
    loss <- loss + 1
  } 
  else if (player == "Rock" & bot == "Paper") 
  {
    loss <- loss + 1
  } 
  else 
  {
    win <- win +1
  }

# Result
cat("Player action:", player, "\n")
cat("Bot action:", bot, "\n")
cat("Win:", win) 
cat("Loss:", loss) 
cat("Tie:", tie)

}

