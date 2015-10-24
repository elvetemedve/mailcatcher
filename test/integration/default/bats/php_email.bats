@test "catch a php email" {
  unset GEM_PATH
  curl -X 'DELETE' http://localhost:1080/messages
  php -r 'mail("receiver@test.com", "test", "test", "", "-fsender@test.com");'
  curl --fail http://localhost:1080/messages/1.json
}
