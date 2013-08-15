module KeyboardInput

  class << self

    attr_accessor :window

    def button_down(id)
      case id
        when Gosu::KbEscape then window.close
      end
    end

  end

end