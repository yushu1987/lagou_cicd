package test

import (
	"testing"
)

func assertEqual(t *testing.T, a, b interface{}) {
	t.Helper()
	if a != b {
		t.Errorf("Not Equal. %d %d", a, b)
	}
}

func TestHelloWorld(t *testing.T) {
	t.Log("hello world")
	assertEqual(t, 1 , 1)
}
