BUCKET_NAME=$(gsutil ls | head -n 1 | rev | cut -c 2- | rev)

OUTPUT_PATH=$BUCKET_NAME/$JOB_NAME

echo $OUTPUT_PATH 

python -m tensorflow.tensorboard --logdir=$OUTPUT_PATHBUCKET_NAME=$(gsutil ls | head -n 1 | rev | cut -c 2- | rev)
