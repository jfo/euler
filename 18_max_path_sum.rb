require 'pry'

def create_root

  f = File.open('pyramid.txt', 'r').readlines

  f.map! { |e| e.sub("\n", '') }

  root = {}
  # implementing a python FIFO queue using Array#shift and Array#push
  queue = []

  f.each do |line|
    line = line.split

    if root.empty?
      root[line[0]] = {}
      queue.push(root[line[0]])
      next
    end

    tmp = queue.shift

    (0..line.length).each do |i|
      if i == 0 || i == (line.length - 1)
        tmp[line[i]] = {}
        queue.push(tmp[line[i]])
      else
        child = {}
        tmp[line[i]] = child
        queue.push(tmp[line[i]])
        tmp = queue.shift
        tmp[line[i]] = child
      end
    end
  end
  return root
end

def depth_first_search(node, max_sum, cur_sum

end
