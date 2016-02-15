class SkipTracks

  def self.skip_tracks(arr, rotate)

    length = arr.length()
    rotate = rotate % length
    for i in (0...rotate)              
      temp = arr[0]
      for j in (0...length-1)
        arr[j] = arr[j+1] 
      end
      arr[j+1] = temp
    end

  end

  def self.skip_tracks2(arr, i)
    arr.rotate!(i)
  end

end
