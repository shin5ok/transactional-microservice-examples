SERVICE_NAME=$1
if test -z $SERVICE_NAME;
then
    echo "*** error"
    exit 2
fi
gcloud beta run deploy --source=. --platform=managed --region=us-central1 --no-allow-unauthenticated $SERVICE_NAME
