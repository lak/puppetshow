class CreateParamNames < ActiveRecord::Migration
  def self.up
    create_table :param_names do |t|
      t.column :name, :string
      t.column :updated_at, :datetime
    end
    add_index :param_names, :id, :integer => true
    add_index :param_names, :name
  end

  def self.down
    drop_table :param_names
  end
end
