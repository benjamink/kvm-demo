@test "should execute virsh list" {
  run sudo virsh list --all
  [ "$status" -eq 0 ]
}
