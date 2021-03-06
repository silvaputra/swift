enum E {
  case e1
  case e2
  case e3
  case e4
}

func foo(e: E) -> Int {
  switch e {}
}
// RUN: rm -rf %t.result && mkdir -p %t.result
// RUN: %refactor -expand-switch-cases -source-filename %s -pos=9:8 >> %t.result/L10.swift
// RUN: diff -u %S/Outputs/no_space_between_braces/L10.swift.expected %t.result/L10.swift
