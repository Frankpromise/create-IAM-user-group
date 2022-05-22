##-----Define IAM USERS------

resource "random_integer" "random" {
  min = 1
  max = 100
}


resource "aws_iam_user" "user" {
  count = var.users
  name  = "s3_user"
  tags = {
    
      Name = "user-${random_integer.random.id}"

  }
 }

# #assign users to group
resource "aws_iam_group" "AmazonS3FullAccess" {
name = "AmazonS3FullAccess"

 }

#Assign users to group

resource "aws_iam_group_membership" "assignment" {
  name = "assignment"
  users = [
      aws_iam_user.user[0].name,
      aws_iam_user.user[1].name
  ]
  group = aws_iam_group.AmazonS3FullAccess.name
}

#Assign policy to group

resource "aws_iam_policy_attachment" "attachment" {
  name = "attachment"
  groups = [aws_iam_group.AmazonS3FullAccess.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
