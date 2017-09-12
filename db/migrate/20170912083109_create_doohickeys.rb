class CreateDoohickeys < ActiveRecord::Migration
  def up
    create_table :doohickeys do |t|
      t.string :name
    end
  end

  def down
    drop_table :doohickeys
  end
end
