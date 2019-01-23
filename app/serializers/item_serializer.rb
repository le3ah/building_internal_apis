class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description

  has_many :orders

  attribute :num_orders do |object|
    object.orders.count
  end

  attribute :salutation do
    "GOODBYE ENEMIES"
  end
end
