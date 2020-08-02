source("./scripts/pull_data.R")
source("./scripts/compute_features.R")
source("./scripts/build_model.R")


library(metaflow)

metaflow("HouseFlow") %>%
    parameter("lr", help="learning rate", required=TRUE) %>%
    step(step = "start",
         next_step = "pull_house_data") %>%
    step(step = "pull_house_data",
         r_function = pull_house_data,
         next_step = "compute_features") %>%
    step(step = "compute_features",
         r_function = compute_features,
         next_step = c("build_gbm_model", "build_lasso_model")) %>%
    step(step = "build_gbm_model",
         r_function = build_gbm_model,
         next_step = "select_model") %>%
    step(step = "build_lasso_model",
         r_function = build_lasso_model,
         next_step = "select_model") %>%
    step(step = "select_model",
         r_function = select_model,
         join = TRUE,
         next_step = "end") %>% 
     step(step = "end",
          r_function = summarize_model) %>%
    run()