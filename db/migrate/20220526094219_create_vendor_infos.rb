class CreateVendorInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :vendor_infos, id: :uuid  do |t|
      t.string :vendor_company_name
      t.string :vendor_name
      t.string :vendor_email
      t.text :vendor_address

      t.timestamps
    end
  end
end
