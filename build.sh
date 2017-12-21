# Copy given requirements.txt into app
cp -f $1 ./app/src/requirements.txt

# Build docker image
sudo docker build -t python-lambda ./app

# Run docker with script to export zipped packages
sudo docker run -it --rm --name py-lamb -v $(realpath .):/zipped-package python-lambda sh /app/src/exportpackage.sh
