class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.column :title, :text, :null => false
      t.column :restype, :string, :null => false
      t.column :host_id, :integer
      t.column :source_file_id, :integer
      t.column :exported, :boolean
      t.column :line, :integer
      t.column :updated_at, :datetime
    end
    add_index :resources, :id, :integer => true
    add_index :resources, :host_id, :integer => true
    add_index :resources, :source_file_id, :integer => true
    execute "CREATE INDEX typentitle ON resources (restype,title(50));"
  end

  def self.down
    drop_table :resources
  end
end
