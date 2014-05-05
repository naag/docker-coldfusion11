docker-coldfusion10
===================

ColdFusion 10 as Docker image. Run

    ./prepare.sh
    
first to download ColdFusion 10 installer and latest patches. Then build the Docker container:

    docker build -t cf10 .

And run it with:

    docker run -d -P 8500:8500 cf10
