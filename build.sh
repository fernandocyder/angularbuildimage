export IMAGE_NAME=fe_staff_portal
export IMAGE_TAG=742070012776.dkr.ecr.ap-southeast-1.amazonaws.com/fe_staff_portal
export IMAGE_VERSION=latest

# docker rmi -f $IMAGE_NAME
docker build -f Dockerfile-fe-frontend-app -t $IMAGE_NAME:$IMAGE_VERSION .
docker tag $IMAGE_NAME:$IMAGE_VERSION $IMAGE_TAG:$IMAGE_VERSION
# docker push $IMAGE_NAME