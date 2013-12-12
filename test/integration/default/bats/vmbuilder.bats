@test "should execute vmbuilder -h" {
  run vmbuilder --help
  [ "$status" -eq 0 ]
}

@test "/root/vmbuilder.nonet should exist & be executable" {
  [ -x /root/vmbuilder.nonet ]
}
