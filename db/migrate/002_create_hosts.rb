class CreateHosts < ActiveRecord::Migration
  def self.up
    create_table :hosts do |t|
      t.column :name, :string, :null => false
      t.column :ip, :string
      t.column :last_compile, :datetime
      t.column :last_freshcheck, :datetime
      t.column :last_report, :datetime
      #t.column :exported, :boolean
      t.column :updated_at, :datetime
      t.column :source_file_id, :integer
    end
    add_index :hosts, :id, :integer => true
    add_index :hosts, :source_file_id, :integer => true
    add_index :hosts, :name
  end

  def self.down
    drop_table :hosts
  end
end
