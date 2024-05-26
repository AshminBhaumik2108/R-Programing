list.Variable1 <- list("Ashmin", "Bhaumik", "Rahul", "Amit", "Golden")
list.Variable2 <- list(list.Variable1, "Pritam", "Mohuri", "Ramesh")
list.PrintVariables <- list(list.Variable1, list.Variable2)
print(list.PrintVariables)

# Printing the Value of the list elements after taking some user recommendation..
{
  # print the values present in the indexes...
  list.PrintVariables[[1]][[2]] # Prints 'Bhaumik'...
  list.PrintVariables[[2]] # Prints all the elements in list.Variable2...
}

# list of the elements with there Domain Names and with dollars...

{
  intListName <- list("Ashmin"=23, "Bhaumik"=56, "Vishnu"=90)
  cat(intListName $Ashmin, intListName $Bhaumik)
}

















