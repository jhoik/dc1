#BUCKET_NAME=$(gsutil ls | head -n 1 | rev | cut -c 2- | rev)
#Please check the directory 
    #-excode
        #-trainer
        #-setup.py
        #-sys

BUCKET_NAME="group02-184615-mlengine"
OUTPUT_PATH=$BUCKET_NAME/$JOB_NAME

echo $OUTPUT_PATH

gcloud ml-engine jobs submit training $JOB_NAME \ 
    --job-dir $OUTPUT_PATH \
    --runtime-version 1.2 \
    --module-name trainer.task \
    --package-path trainer/ \
    --region europe-west1 \
    --scale-tier BASIC_GPU \
    -- \
    --verbosity DEBUG

