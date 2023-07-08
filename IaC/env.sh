#!/usr/bin/bash
echo "Setting evnironnemt variables!"

host=$(terraform output -raw rds_host)
slice=$(echo "$host" | cut -c 1-52)
echo "export RDS_HOST=$slice" >> ~/.profile

username=$(terraform output -raw rds_username)
echo "export RDS_USERNAME=$username" >> ~/.profile

password=$(terraform output -raw rds_password)
echo "export RDS_PASSWORD=$password" >> ~/.profile

echo "export RDS_DATABASE=users" >> ~/.profile
echo "export RDS_PORT=5432" >> ~/.profile

echo "Done setting environment variables"