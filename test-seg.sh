

read -p "Enter project name: " projectname


cd /yolov5
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
cd /workspaces/open-bio-image-trainer


python /yolov5/segment/predict.py --source `pwd`/projects/$projectname/test/images/ --weights `pwd`/projects/$projectname/result5/weights/best.pt --conf 0.25 --name $projectname --project `pwd`/projects/$projectname/testrun --conf-thres 0.04 --iou-thres 0.04 --view-img --save-conf
