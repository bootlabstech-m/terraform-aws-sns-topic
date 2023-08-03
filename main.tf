resource "aws_sns_topic" "sns_topic" {
  count           = var.no_of_sns_topics
  name            = var.sns_topic_name[count.index]
  delivery_policy = var.delivery_policy
  fifo_topic      = var.fifo_topic
    lifecycle {
    ignore_changes = [tags]
  }
}