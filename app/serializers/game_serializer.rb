class GameSerializer < ActiveModel::Serializer
  attributes :id, :state, :data
end
