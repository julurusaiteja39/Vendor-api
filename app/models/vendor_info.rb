class VendorInfo < ApplicationRecord
    validates :vendor_company_name, :presence => true
    validates :vendor_address,:presence => true
    validates :vendor_name,:presence => true
    validates :vendor_email,email: true 
end
