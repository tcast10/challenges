class Image

  def initialize (pic)
    @pic = pic
  end

  def get_ones
    ones = []
    @pic.each_with_index do |row, row_num|
      row.each_with_index do |item, col_num|
        if item == 1
          ones << [row_num, col_num]
        end
      end
    end
    ones
  end

  def blur!(blur_dist)
    ones = get_ones

    @pic.each_with_index do |row, row_num|
      row.each_with_index do |item, col_num|
        ones.each do |found_row_num, found_col_num|
          if manhattan_dist(col_num, row_num, found_col_num, found_row_num) <= blur_dist
            @pic[row_num][col_num] = 1
          end
        end
      end
    end
  end

  def manhattan_dist (x1, y1, x2, y2)
    horizontal_dist = (x2 - x1).abs
    vertical_dist = (y2 - y1).abs
    # (x2 - x1).abs + (y2 - y1).abs
    horizontal_dist + vertical_dist
  end

  def output_image
    @pic.each do |data|
      puts data.join
    end
  end
end


image = Image.new([
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 1, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 1]
])


# original image
image.output_image
puts

# blurred image
image.blur!(2)
image.output_image