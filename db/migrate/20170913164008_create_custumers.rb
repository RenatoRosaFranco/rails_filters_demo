class CreateCustumers < ActiveRecord::Migration[5.1]
  def change
    create_table :custumers do |t|
      t.string :name
      t.string :email
      t.string :company

      t.timestamps
    end
  end
end
