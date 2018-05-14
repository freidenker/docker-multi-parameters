# docker-multi-parameters
dockerfile with multi parameters

`docker build -t  azurelogin:180514`

## docker run container with azure account -u \<clientid\> -p \<clientsecret\> -t \<tenantid\>
`docker run --name login azurelogin:180514 -u 4a6f06d9-xxxxxxxxxxxxxxxxxxx -p f1122cd3-xxxxxxxxxxxxxxxxxxx -t 105b2061-xxxxxxxxxxxxxxxxxxxx`
