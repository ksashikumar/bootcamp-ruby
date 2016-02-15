class Maze
  
  def initialize(str)
    @str = str
    @strs = precompute
    @col = @strs[0].size
    @row = @strs.size

    sxy = findStart
    @sx = sxy[0]
    @sy = sxy[1]

    exy = findEnd
    @ex = exy[0]
    @ey = exy[1]
  end

  def precompute
    @str.split("\n")
  end

  def findStart
    for i in 0..@strs.size 
      for j in 0..@strs[i].size
        if @strs[i][j] == 'A'
          return i, j
        end
      end
    end
  end

  def findEnd
    for i in 0..@strs.size 
      for j in 0..@strs[i].size
        if @strs[i][j] == 'B'
          return i, j
        end
      end
    end
  end

  def solvable?
    queue = Queue.new 

    visited = Array.new(@row)

    for i in 0...@col 
      visited[i] = Array.new(@col, false)
    end

    start = [@sx, @sy]
    queue.push(start)

    x1 = [1, -1, 0, 0]
    y1 = [0, 0, 1, -1]

    while !queue.empty?
      node = queue.pop
      for i in (0...4)
        x = x1[i] + node[0]
        y = y1[i] + node[1]
        if x >= 0 && x < @row && y >= 0 && y < @col && @strs[x][y] != '#'
          if !visited[x][y]
            visited[x][y] = true
            if @strs[x][y] == 'B'
              return true
            end
            point = [x, y]
            queue.push(point)
          end 
        end
      end
    end

    return false

  end

  def steps
    queue = Queue.new 

    visited = Array.new(@row)

    for i in 0...@col 
      visited[i] = Array.new(@col, false)
    end
    k = 0
    start = [@sx, @sy, k]
    queue.push(start)

    x1 = [1, -1, 0, 0]
    y1 = [0, 0, 1, -1]

    while !queue.empty?
      node = queue.pop
      for i in (0...4)
        x = x1[i] + node[0]
        y = y1[i] + node[1]
        if x >= 0 && x < @row && y >= 0 && y < @col && @strs[x][y] != '#'
          if !visited[x][y]
            visited[x][y] = true
            k = node[2] + 1
            point = [x, y, k]
            if @strs[x][y] == 'B'
              return k
            end
            queue.push(point)
          end 
        end
      end
    end
    return 0
  end

end

