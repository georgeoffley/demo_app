class CreateMicropsots < ActiveRecord::Migration
  def change
    create_table :micropsots do |t|
      t.string :ontent
      t.integer :user_id

      t.timestamps
    end
  end
end
