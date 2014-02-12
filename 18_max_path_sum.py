import os, io
import pdb
import Queue

def createRoot():
    f = open('triangle.txt', 'r')

    root = {}
    queue = Queue.Queue()

    for line in f.readlines():

        line = line.split()
        if not root:
            root[line[0]] = {}
            queue.put(root[line[0]])
            continue

        tmp = queue.get()
        for i in range(len(line)):
            if i == 0 or i == len(line)-1:
                tmp[line[i]] = {}
                queue.put(tmp[line[i]])
            else:
                child = {}
                tmp[line[i]] = child
                queue.put(tmp[line[i]])
                tmp = queue.get()
                tmp[line[i]] = child

        #print line
    return root

def depthFirstSearch(node, maxSum, curSum):
    if not node.keys():
        return curSum

    for key in node.keys():
        result = depthFirstSearch(node[key], maxSum, curSum+int(key))
        if result > maxSum:
            maxSum = result

    return maxSum


root = createRoot()
print depthFirstSearch(root,  0, 0)
