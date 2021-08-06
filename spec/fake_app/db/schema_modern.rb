ActiveRecord::Schema.define do
  self.verbose = false

  create_table :api_clients, :force => true do |t|
    t.string :name, null: false
    t.column :key, "uuid", null: false
    t.column :enabled, :bool, null: false, default: true
    t.column :created_at, "timestamp with time zone", null: false
    t.column :disabled_at, "timestamp with time zone", null: true
  end
  add_index :api_clients, [:name]
  add_index :api_clients, [:key], unique: true
end
