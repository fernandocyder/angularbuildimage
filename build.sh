export IMAGE_NAME=fe_staff_portal
# export IMAGE_TAG=742070012776.dkr.ecr.ap-southeast-1.amazonaws.com/fe_staff_portal
export IMAGE_TAG=public.ecr.aws/u2m9x4t2/fe_staff_portal
export IMAGE_VERSION=latest

# aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 742070012776.dkr.ecr.ap-southeast-1.amazonaws.com
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u2m9x4t2

# docker rmi -f $IMAGE_NAME
docker build -f Dockerfile-fe-frontend-app -t $IMAGE_NAME:$IMAGE_VERSION .
docker tag $IMAGE_NAME:$IMAGE_VERSION $IMAGE_TAG:$IMAGE_VERSION

docker push $IMAGE_TAG:$IMAGE_VERSION