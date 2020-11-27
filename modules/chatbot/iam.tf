# 通知専用の AWS Chatbot を利用する際の IAM Roleを作成
# AWS 公式が提供している template を利用して生成したものと同等
# See also https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-cli-commands.html#iam-policies-for-slack-channels-cli-support

resource "aws_iam_role" "chatbot-notification-only" {
  name = "chatbot-notification-only"
  assume_role_policy = jsonencode(
    {
      Version : "2012-10-17",
      Statement : [
        {
          Sid : "",
          Effect : "Allow",
          Principal : {
            Service : "chatbot.amazonaws.com"
          },
          Action : "sts:AssumeRole"
        }
      ]
    }
  )
  description = "AWS Chatbot Execution Role for Only Notification"
}

resource "aws_iam_role_policy_attachment" "chatbot-notification-only-attach" {
  policy_arn = aws_iam_policy.chatbot-notification-only.arn
  role       = aws_iam_role.chatbot-notification-only.name
}

resource "aws_iam_policy" "chatbot-notification-only" {
  name = "chatbot-notification-only"
  policy = jsonencode(
    {
      Version = "2012-10-17"
      Statement : [
        {
          Sid : "",
          Effect : "Allow",
          Action : [
            "cloudwatch:Describe*",
            "cloudwatch:Get*",
            "cloudwatch:List*"
          ],
          Resource : "*"
        }
      ]
    }
  )
}
