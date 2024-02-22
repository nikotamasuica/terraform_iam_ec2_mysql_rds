# terraform_iam_ec2_mysql_rds
参考URL

https://hackmd.io/_y_R-t8dTKepPkNyEcjZOg?view

https://www.youtube.com/watch?v=zQryEqZnBJU&t=1769s

ステップ5（terraform init & ドライラン）

$ terraform init

$ terraform plan

ステップ5（terraform apply）

$ terraform apply

ステップ6（ssh接続 & nginxのインストール）

$ aws ec2 describe-instances --output table \
--query 'Reservations[*].Instances[].{
  ID: InstanceId,
  Name: Tags[?Key==`Name`] | [0].Value,
  State: State.Name
  }' --profile terraform-user

$ ssh -i id_rsa_terraform ec2-user@xx.xx.x.xxx

$ sudo yum -y update

$ sudo amazon-linux-extras enable nginx1

$ sudo yum -y install nginx

$ sudo systemctl enable nginx
$ sudo systemctl start nginx.service
