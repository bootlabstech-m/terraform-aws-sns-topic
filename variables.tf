variable "region" {
  description = "The region where the bucket is created"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}
variable "no_of_sns_topics" {
  description = "no_of_sns_topics to create"
  type        = number
}
variable "sns_topic_name" {
  description = "sns_topic_names to create"
  type        = list(string)
}
variable "delivery_policy" {
  description = "delivery_policy"
  type        = string
}
variable "fifo_topic" {
  description = "whether fifo topic"
  type        = bool
}