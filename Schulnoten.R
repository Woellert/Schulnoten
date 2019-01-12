# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


#generic function "Durchschnitt" erstellen
Punktedurchschnitt <- function(x, ...){
  UseMethod("Punktedurchschnitt")
}

Punktedurchschnitt.data.frame <- function(x, ...){
  y <- sum(x) / (nrow(x) * ncol(x))
  cat("Dein Punktedurchschnitt ist: ", y)
}

Punktedurchschnitt.default <- function(x, ...){
  cat("Fehler: Dies ist ein Programm um Notenpunkte auszurechnen. Sie ben?tigen eine Datenbank mit Notenpunkte.")
}



#generic function Umrechnung erstellen
UmrechnungPunkteNoten <- function(x, ...){
  UseMethod("UmrechnungPunkteNoten")
}

UmrechnungPunkteNoten.data.frame <- function(x, ...){
  y <- (17 - (sum(x) / (nrow(x) * ncol(x)))) / 3
  cat("Dein Notendurchschnitt ist: ", y)
}

UmrechnungPunkteNoten.default <- function(x, ...){
  cat("Fehler: Dies ist ein Programm um Notenpunkte in Noten umzurechnen. Sie ben?tigen eine Datenbank mit Notenpunkte.")
}




#Dataset "Schulnoten" erstellen
Faecher <- c("Deutsch", "Englisch", "Franz?sisch", "Mathe", "Physik", "Musik", "Religion", "Erdkunde", "Geschichte/Sozialkunde", "Sport")
Halbjahre <- c("11/1", "11/2", "12/1", "12/2")
Deutsch <- c(11, 10, 10, 11)
Englisch <- c(8, 10, 8, 11)
Franzoesisch <- c(9, 9, 8, 9)
Mathe <- c(14, 14, 14, 15)
Physik <- c(14, 11, 11, 13)
Musik <- c(13, 13, 11, 13)
Religion <- c(12, 10, 10, 7)
Erdkunde <- c(9, 11, 12, 10)
Geschichte <- c(12, 11, 12, 13)
Sport <- c(13, 10, 10, 11)

Schulnoten <- data.frame(Deutsch, Englisch, Franzoesisch, Mathe, Physik, Musik, Religion, Erdkunde, Geschichte, Sport)
colnames(Schulnoten) <- Faecher
rownames(Schulnoten) <- Halbjahre

Schulnoten



#Funktionen testen
Punktedurchschnitt(Schulnoten)
UmrechnungPunkteNoten(Schulnoten)

