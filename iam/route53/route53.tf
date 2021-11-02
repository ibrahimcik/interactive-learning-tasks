resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.Console.Route53.Hosted_Zone_ID
  name    = "blog.yourdomain"
  type    = "A"
  ttl     = "300"
  records = [aws_eip.127.0.0.1]
}