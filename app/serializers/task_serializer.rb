class TaskSerializer
  include JSONAPI::Serializer
  attributes :name, :deadline, :status

  belongs_to :project
end
