@test "should execute vmbuilder -h" {
  run vmbuilder --help
  [ "$status" -eq 0 ]
}
