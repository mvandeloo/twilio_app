class AddTelephoneToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :telephone, :string
  end
end
