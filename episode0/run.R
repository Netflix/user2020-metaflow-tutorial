source("./scripts/pull_data.R")
source("./scripts/compute_features.R")
source("./scripts/build_model.R")
source("./scripts/utils.R")


message("====  install project R package dependencies ====")
load_dependencies()

message("==== ingest and clean data ====")
dt <- pull_house_data()

message("==== compute features ====")
features <- compute_features(dt)

message("==== build a model ====")
fitted.model <- build_model(features)

summarize_model(fitted.model)