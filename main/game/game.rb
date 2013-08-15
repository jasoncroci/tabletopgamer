class Game

  attr_accessor :window

  def initialize
    self.window = Window.new 1060, 680
    KeyboardInput.window = self.window
  end

end