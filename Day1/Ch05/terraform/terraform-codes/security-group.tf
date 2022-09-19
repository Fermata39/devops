
resource "aws_security_group" "test-sg-eks-cluster" {
  name        = "skt-user20-test-sg-eks-cluster"
  description = "security_group for skt-user20-test-eks-cluster"
  vpc_id      = aws_vpc.test-vpc.id

  tags = {
    Name = "skt-user20-test-sg-eks-cluster"
  }
}

#port 0 은 any port
#-1 프로토콜 상관 없이 지정할 때
resource "aws_security_group_rule" "test-sg-eks-cluster-ingress" {

  security_group_id = aws_security_group.test-sg-eks-cluster.id
  type              = "ingress"
  description       = "ingress security_group_rule for skt-user20-test-eks-cluster"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "test-sg-eks-cluster-egress" {

  security_group_id = aws_security_group.test-sg-eks-cluster.id
  type              = "egress"
  description       = "egress security_group_rule for skt-user20-test-eks-cluster"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
