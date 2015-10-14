class AddCountryToEdition < ActiveRecord::Migration
  def change
    add_column :editions, :country, :string
    add_column :editions, :number_printed, :integer
  end
end
