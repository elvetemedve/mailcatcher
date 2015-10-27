@test "catch a system email" {
  unset GEM_PATH
  curl -X 'DELETE' http://localhost:1080/messages
  /usr/sbin/sendmail "receiver@test.com" <<EOF
Subject: test
From: sender@test.com

Example Message
EOF
  sleep 1
  curl --fail http://localhost:1080/messages/1.json
}
