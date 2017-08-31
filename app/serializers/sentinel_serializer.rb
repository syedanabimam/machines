class SentinelSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :skills, :group
end
