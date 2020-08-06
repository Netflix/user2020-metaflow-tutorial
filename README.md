# user2020-metaflow-tutorial

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
source("run.R)
```