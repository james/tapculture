class FixTypoInConstituion < ActiveRecord::Migration
  def self.up
    rename_column :venues, :consitution, :constitution
  end

  def self.down
    rename_column :venues, :constitution, :consitution
  end
end
