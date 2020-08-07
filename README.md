# useR! 2020 Metaflow Tutorial, Aug 7th, 2020
Tutorial contents for [useR! 2020](https://user2020.r-project.org/program/tutorials/) Metaflow workshop.

Slides available [here](https://docs.google.com/presentation/d/1Udw26_mWL71SkdV25gcmCy_IaSe9EvhuhSYzYlqQ5E0/edit#slide=id.g8f66c5ef30_0_5)

## Install
```R
devtools::install_github("Netflix/user2020-metaflow-tutorial", dependencies=TRUE)
```
## Getting-started
Run the following command to create a `user2020_tutorials` folder in your current working directory. You can find our tutorial contents in this folder.
```R
user2020metaflow::pull_tutorials()
```

Run the following commands to make sure we've setup successfully:
```R
setwd("./user2020_tutorials/episode0_vanilla_R")
source("run.R")
```
