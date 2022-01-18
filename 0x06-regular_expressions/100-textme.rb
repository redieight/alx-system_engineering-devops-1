#!/usr/bin/env ruby
#'\'before'[]' should be used so it won't take '[]' as part of regex expression but of string
#'()' captures everything enclosed
#'.' any single characters but when it is followed by '*' all single characters will followi
# '?' limits after *, +, ?, or {} quantifers, it makes them non-greedy
# since they match maximum amount possible by default.
# '?'  stops when it finds match, minimum amount possible.
# ',' joins the three groups with comma
#groups of [SENDER, RECIVER, FLAGS]

puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
