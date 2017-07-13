class Hackathon < Sequel::Model

  many_to_one :speaker
  many_to_one :topic

end
