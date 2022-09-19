# 라우트 테이블과 서브넷을 매핑하는 역할을 수행
resource "aws_route_table_association" "test-route-association-pub-sub1" {
  route_table_id = aws_route_table.test-route-table-pub-sub1.id
  subnet_id      = aws_subnet.test-public-subnet1.id
}

resource "aws_route_table_association" "test-route-association-pub-sub3" {
  route_table_id = aws_route_table.test-route-table-pub-sub3.id
  subnet_id      = aws_subnet.test-public-subnet3.id
}