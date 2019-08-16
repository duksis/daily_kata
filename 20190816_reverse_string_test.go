package main

import (
  "testing"
)

func CustomReverse(str string) (res string) {
  for _,v := range str {
    res = string(v) + res
  }
  return
}


func TestCustomReverse(t *testing.T) {
  actual := CustomReverse("abc")
  expected := "cba"
  if actual != expected {
    t.Errorf("String was incorrect, got: %s, want: %s.", actual, expected)
  }
}
