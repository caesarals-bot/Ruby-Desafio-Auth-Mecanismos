class AddPublicationIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :publication, null: false, foreign_key: true
  end
end
