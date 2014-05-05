docker-coldfusion11
===================

ColdFusion 11 as Docker image. Run

    ./prepare.sh

first to download ColdFusion 11 installer and latest patches. Then build the Docker container:

    docker build -t cf11 .

And run it with:

    docker run -d -p 80:80 -v /var/www:/var/www cf10
