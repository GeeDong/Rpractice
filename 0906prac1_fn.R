hello.person <- function(last, first = 'UUU', ...) {
  print(sprintf('Hello %s %s', last, first))
}

hello.person(last = 'd')