class CreateParamValues < ActiveRecord::Migration
  def self.up
    create_table :param_values do |t|
      t.column :value, :text, :null => false
      t.column :param_name_id, :integer, :null => false
      t.column :line, :integer 
      t.column :resource_id, :integer
      t.column :updated_at, :datetime
    end
    add_index :param_values, :id, :integer => true
    add_index :param_values, :param_name_id, :integer => true
    add_index :param_values, :resource_id, :integer => true
  end

  def self.down
    drop_table :param_values
  end
end
