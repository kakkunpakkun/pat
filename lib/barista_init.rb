module BaristaInitializer

  def self.registered(app)
    Barista.configure do |c|
      c.root = File.join(app.root, "coffeescripts")
    end

    app.register Barista::Integration::Sinatra
  end
end
