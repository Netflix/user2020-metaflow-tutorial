DIR=$(pwd)/../inst/user2020_tutorials/
cd $DIR/episode0_vanilla_R; Rscript run.R
cd $DIR/episode1_linear_flow; Rscript run.R
cd $DIR/episode2_branches; Rscript run.R --lr 0.01 --reg 0.1
cd $DIR/episode3_foreach; Rscript run.R
