class AddKindToContacts < ActiveRecord::Migration[6.1]
  def change
    add_reference :contacts, :kind, null: true, foreign_key: true
  end
end
