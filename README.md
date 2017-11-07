# Description

Sometimes when you upload Python binary packages to AWS Lambda from your local machine, you get an error. For example, if you want to use *numpy* with AWS Lambda you need a built version on AWS Linux. 

Setting up AWS instance just for a build is a pain. That's why you can quickly [install Docker](https://docs.docker.com/installation/) and build any package on your machine. After building a package just copy into your ``` vendored/ ``` folder and upload to Lambda.

# Usage

If you're ok with Python 3, simply build Docker image from a given ``` Dockerfile ``` with a command

```
docker build -t your_name/your_tag .
```

Don't forget to replace *your_name* and *your_tag* to whatever you want.

Then run your container and mount local folder with a desired ``` requirements.txt ``` file to a containers ```/workdir_container``` with a command

```
docker run --rm -v your_folder_with_requirements_file:/workdir_container iwitaly/aws
```

Now wait for packages to be built and find them at ```your_folder_with_requirements_file/vendored/```.
