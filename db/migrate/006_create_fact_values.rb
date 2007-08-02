class CreateFactValues < ActiveRecord::Migration
  def self.up
    create_table :fact_values do |t|
      t.column :value, :text, :null => false
      t.column :fact_name_id, :integer, :null => false
      t.column :host_id, :integer, :null => false
      t.column :updated_at, :datetime
    end
    add_index :fact_values, :id, :integer => true
    add_index :fact_values, :fact_name_id, :integer => true
    add_index :fact_values, :host_id, :integer => true
  end

  def self.down
    drop_table :fact_values
  end
end
