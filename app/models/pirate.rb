class Pirate

  attr_accessor :name, :weight, :height

  @@p_all = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@p_all << self
  end

  def self.all
    @@p_all
  end

  def self.clear
    @@p_all.clear
  end

end
