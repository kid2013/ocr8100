DATE=201807
CAFFEBIN=/home/username/ocr8100/caffe_ocr/build/tools/caffe
GLOG_logtostderr=0 GLOG_log_dir=log20/$DATE
$CAFFEBIN train -solver=solver20.prototxt  -gpu=3 -weights=_iter_50000.caffemodel   2>&1 | tee res20.log
