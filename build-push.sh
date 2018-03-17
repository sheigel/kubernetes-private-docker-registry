docker build -t localhost:32030/date-printer:0.1 .
POD_NAME=$(kc get pods -l run=registry -o=jsonpath='{.items[*].metadata.name}')

kc port-forward $(POD_NAME) 32030:5000

docker push localhost:32030/date-printer:0.1