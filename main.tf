resource "aws_sns_topic" "sns_topic" {
  count                       = var.no_of_sns_topics
  name                        = var.fifo_topic ? "${var.sns_topic_name}-${count.index + 1}.fifo" : "${var.sns_topic_name}-${count.index + 1}"
  delivery_policy             = var.delivery_policy
  fifo_topic                  = var.fifo_topic
  content_based_deduplication = var.fifo_topic ? var.content_based_deduplication : null
  kms_master_key_id           = var.kms_master_key_id
  tracing_config              = var.tracing_config
  lifecycle {
    ignore_changes = [
      tags,
      delivery_policy,
      archive_policy,
      sqs_failure_feedback_role_arn,
      sqs_success_feedback_role_arn,
      sqs_success_feedback_sample_rate
      ]
  }
}