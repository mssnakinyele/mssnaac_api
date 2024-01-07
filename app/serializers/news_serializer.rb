class NewsSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :image
end
