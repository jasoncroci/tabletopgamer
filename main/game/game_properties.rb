class GameProperties

  attr_reader :properties

  def initialize
    @properties = YAML.load_file('main/game/properties.yml')
    initialize_methods
  end

  def initialize_methods
    properties.each { |prop,value| add_method(prop,value) }
  end

  def add_method(method,value)
    self.class.instance_eval { define_method(method) { value } }
  end

end