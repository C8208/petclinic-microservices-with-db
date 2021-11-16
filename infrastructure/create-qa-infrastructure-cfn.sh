PATH="$PATH:/usr/local/bin"
APP_NAME="petclinic"
<<<<<<< HEAD
APP_STACK_NAME="eric3-$APP_NAME-App-QA-${BUILD_NUMBER}"
CFN_KEYPAIR="eric3-${APP_NAME}-qa.key"
=======
APP_STACK_NAME="eric-$APP_NAME-App-QA-${BUILD_NUMBER}"
CFN_KEYPAIR="eric-${APP_NAME}-qa.key"
>>>>>>> feature/msp-18
CFN_TEMPLATE="./infrastructure/qa-docker-swarm-infrastructure-cfn-template.yml"
AWS_REGION="us-east-1"
aws cloudformation create-stack --region ${AWS_REGION} --stack-name ${APP_STACK_NAME} --capabilities CAPABILITY_IAM --template-body file://${CFN_TEMPLATE} --parameters ParameterKey=KeyPairName,ParameterValue=${CFN_KEYPAIR}