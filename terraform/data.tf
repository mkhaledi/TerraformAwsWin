data "aws_iam_role" "GitlabRunnerDeployRole" {
  name = "GitlabRunnerDeployRole"
}


data "aws_vpcs" "core-vpc" {
  tags = {
    Name = "core-vpc"
  }
}

data "aws_subnet_ids" "private-subnet-2A" {
  vpc_id = join(",", data.aws_vpcs.core-vpc.ids)
  tags = {
    Name = "PrivateSubnet2A"
  }
}
data "aws_subnet_ids" "private-subnet-2B" {
  vpc_id = join(",", data.aws_vpcs.core-vpc.ids)
  tags = {
    Name = "PrivateSubnet2B" 
  }
}
data "aws_subnet_ids" "private-subnet-1A" {
  vpc_id = join(",", data.aws_vpcs.core-vpc.ids)
  tags = {
    Name = "PrivateSubnet1A"
  }
}
data "aws_subnet_ids" "private-subnet-1B" {
  vpc_id = join(",", data.aws_vpcs.core-vpc.ids)
  tags = {
    Name = "PrivateSubnet1B"
  }
}

data "aws_subnet_ids" "public-subnets" {
  vpc_id = join(",", data.aws_vpcs.core-vpc.ids)
  tags = {
    Network = "Public"
  }
}