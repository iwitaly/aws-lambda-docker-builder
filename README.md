# Description

Sometimes when you upload Python binary packages to AWS Lambda from your local machine, you get an error. For example, if you want to use *numpy* with AWS Lambda you need a built version on AWS Linux. 

Setting up AWS instance just for a build is a pain. That's why you can quickly [install Docker](https://docs.docker.com/installation/) and build any package on your machine. After building a package just copy into your ``` vendored/ ``` folder and upload to Lambda.
