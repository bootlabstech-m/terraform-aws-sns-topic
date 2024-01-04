variable "region" {
  description = "The region where the bucket is created"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type        = string
}
variable "no_of_sns_topics" {
  description = "no_of_sns_topics to create"
  type        = number
}
variable "sns_topic_name" {
  description = "sns_topic_names to create.Apeend the name with .fifo if creating FIFO queues."
  type        = string
}
variable "delivery_policy" {
  description = "delivery_policy"
  type        = string
}
variable "fifo_topic" {
  description = "whether fifo topic"
  type        = bool
}
variable "content_based_deduplication" {
  description = "content_based_deduplication"
  type        = bool
}
variable "kms_master_key_id" {
  description = "kms_master_key_id"
  type        = string
}