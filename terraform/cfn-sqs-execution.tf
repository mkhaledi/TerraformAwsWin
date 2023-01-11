resource "aws_cloudformation_stack" "cfn-sqs" {
  name = "TEST-queue-stack"
  parameters = {
    QueueName = "TEST2-plan-queue"
    FailedMessageQueueName = "TEST2-plan-deadletterque"
    RoleArn = "arn:aws:iam::<accountId>:role/GitlabRunnerDeployRole"
  }
  template_body = file("${path.module}/cloudformation/cfn-platform-sqs.yml")
}