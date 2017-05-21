# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse train
  count = train[:data]
  n = 0
  answer = ""
  while count > 0
    n = n + 1
    answer += n.to_s + "\n"
    count -= 1
  end
  print answer
end
