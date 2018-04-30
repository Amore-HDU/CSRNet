NETWORK="CSRNet"
DATASET="Part_A"
SOLVER="solver.prototxt"
CAFFE="/home/caffe-master/build/tools/caffe"
#SNAPSHOT="/home/cxy/cxy/CSRNet/Model/Part_A_iter_260000.solverstate"
WEIGHTS="Model/pretrained/VGG_ILSVRC_16_layers.caffemodel"
GPU_LIST="1"
LOG="train_log/train-`date +%Y-%m-%d-%H-%M-%S`.log"

if [ -f $LOG ];
then
rm $LOG
fi
$CAFFE train --solver=$SOLVER --weights=$WEIGHTS --gpu=$GPU_LIST 2>&1 | tee $LOG
#$CAFFE train --solver=$SOLVER --snapshot=$SNAPSHOT --gpu=$GPU_LIST 2>&1 | tee $LOG
