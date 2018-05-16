class Ship

  attr_accessor :name, :type, :booty

  @@s_all = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @@s_all << self
  end

  def self.all
    @@s_all
  end

  def self.clear
    @@s_all.clear
  end

end
