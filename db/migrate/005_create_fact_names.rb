class CreateFactNames < ActiveRecord::Migration
  def self.up
    create_table :fact_names do |t|
      t.column :name, :string
      t.column :updated_at, :datetime
    end
    add_index :fact_names, :id, :integer => true
    add_index :fact_names, :name
  end

  def self.down
    drop_table :fact_names
  end
end
