class Window < Gosu::Window

  attr_accessor :board, :properties

  def initialize(width,height,full_screen=false)
    super(width, height, full_screen)
    @properties = GameProperties.new
    @board = Board.new self, @properties.num_x_tiles, @properties.num_y_tiles
  end

  def update
  end
  
  def draw
    board.draw
  end

  def needs_cursor?
    true
  end

  def button_down(id)
    KeyboardInput.button_down(id)
  end


end