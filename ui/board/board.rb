class Board

  attr_reader :grid_square_image, :num_x_tiles, :num_y_tiles

  def initialize(window,num_x_tiles,num_y_tiles)
    @grid_square_image = Gosu::Image.new window, "media/images/grid_square.jpg", false
    @num_x_tiles = num_x_tiles
    @num_y_tiles = num_y_tiles
  end

  def draw
    draw_background_grid
  end

  def draw_background_grid
    @num_x_tiles.times do |x| 
      @num_y_tiles.times { |y| draw_tile(x,y) }
    end
  end

  def draw_tile(x,y)
    @grid_square_image.draw tile_pos(:width, x), tile_pos(:height, y), 0
  end

  def tile_pos(dimension, pos)
    @grid_square_image.send(dimension) * pos
  end

end