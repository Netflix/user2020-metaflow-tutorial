DIR=$(pwd)
cd $DIR/episode0; Rscript run.R
cd $DIR/episode1; Rscript run.R
cd $DIR/episode2; Rscript run.R --lr 0.01
cd $DIR/episode3; Rscript run.R