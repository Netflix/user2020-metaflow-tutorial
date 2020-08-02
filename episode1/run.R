source("./scripts/pull_data.R")
source("./scripts/compute_features.R")
source("./scripts/build_model.R")


library(metaflow)

metaflow("HouseFlow") %>%
    step(step = "start",
         r_function = pull_house_data,
         next_step = "compute_features") %>%
    step(step = "compute_features",
         r_function = compute_features,
         next_step = "build_model") %>%
    step(step = "build_model",
         r_function = build_gbm_model,
         next_step = "end") %>%
    step(step = "end",
         r_function = summarize_model) %>% 
    run()