class Photo
  include Mongoid::Document
  field :album, type: String
  field :date, type: Date
end
