class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :links, :hash, :hashcode
  end
end
