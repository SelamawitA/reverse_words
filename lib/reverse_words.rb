
def reverse_words(my_words)
  start = 0
  end_w = 0
  if my_words == nil
    return nil
  end
  while my_words[end_w] != nil
    while my_words[end_w] != ' ' && my_words[end_w] != nil
    #nil is needed in both loops to prevent that code from being used past the end of the word.
      end_w+=1
    end

    reverse_start = start
    reverse_end = end_w-1

    while reverse_start < reverse_end
      last = my_words[reverse_end]
      first = my_words[reverse_start]

      my_words[reverse_start] = last
      my_words[reverse_end] = first

      reverse_start+=1
      reverse_end-=1
    end

    start = end_w+1
    end_w+=1
  end

 end
