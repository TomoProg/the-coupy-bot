class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :send_msg
      t.string :response_msg

      t.timestamps
    end
  end
end
