class CreateFormPages < ActiveRecord::Migration[7.1]
  def change
    create_table :form_pages do |t|
      t.string :username
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
