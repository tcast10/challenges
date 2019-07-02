class Image

  def initialize(pic)
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

  def blur!
    ones = get_ones
    @pic.each_with_index do |row, row_num|
      row.each_with_index do |item, col_num|
        ones.each do |found_row_num, found_col_num|

          if row_num == found_row_num && col_num == found_col_num
            @pic[row_num -1][col_num] = 1 unless row_num == 0 #up
            @pic[row_num +1][col_num] = 1 unless row_num >= 3 #down
            @pic[row_num][col_num -1] = 1 unless col_num == 0 #left
            @pic[row_num][col_num +1] = 1 unless col_num >= 3 #right
          end
        end
      end
    end
  end

  def output_image
    @pic.each do |data|
      puts data.join
    end
  end
end

image = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])

#original output
image.output_image
puts
image.blur!

#blurred output
image.output_image