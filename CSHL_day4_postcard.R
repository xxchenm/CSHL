#ensure to create a project in a main folder where you want all files to be.

## Install the package manually
install.packages("here")

## Load "here" (previously installed)
library("here")
here::here()

getwd() # returns the current path
setwd("/Users/m252480/Documents/Course/Year3/2024Winter/CSHL/CourseMaterials/Day4") # changes to the specified path
## Instead of "C:/Users/user/Desktop/data/myfile.csv"

## Use here to construct file paths
file_path <- here( "data", "myfile.csv")
# file_path <- here:here("Users", "user", "Desktop","data", "myfile.csv")
data <- read.csv(file_path)

## Example: save data to a file and load it
a <- 1
c <- 23

save(a, c, file = here("test-data.RData"))
# save(a, c, file = here:here("test-data.RData"))
load(here("test-data.RData"))
# load(here:here("test-data.RData"))

## Create a directory
dir.create(here("subdirectory"), showWarnings = FALSE)
# dir.create(here:here("subdirectory"), showWarnings = FALSE)

## Create a file, indicating the subdirectory (the first argument in this case)
file.create(here("subdirectory", "filename"))
#> [1] TRUE

## Open the new created file
file.show(here("subdirectory", "filename"))
# file.show(here:here("subdirectory", "filename"))

## For example, if we want to see our files in the directory
list.files(here(), recursive = TRUE)

## Install the package manually
# install.packages("usethis")

## Load "usethis (previously installed)
library("usethis")

usethis::use_r("test.R")
usethis::use_git()
usethis::use_readme_md()

# install.packages(c("gitcreds", "gert", "gh"))

## Load them separately
library("gitcreds")
library("gert")
library("gh")

## Initiate connection with GitHub
usethis::create_github_token() # redirects to GitHub where you'll choose a specific name for the token
gitcreds::gitcreds_set() # here you place the token (NOT your GitHub password!!!)

## Configure GitHub user
usethis::edit_git_config() # opens the global .gitconfig file

## Initialize the Git repository
usethis::use_git()

## Connect your local Git repository with GitHub servers
usethis::use_github()

print("success")


