resource "aws_route53_zone" "main" {
  name = "jimmyfavor.net"
}

resource "aws_route53_zone" "prod" {
  name = "argocd.jimmyfavor.net"

  tags = {
    Environment = "prod"
  }
}

resource "aws_route53_record" "argocd" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "argocd.jimmyfavor.net"
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.prod.name_servers
}