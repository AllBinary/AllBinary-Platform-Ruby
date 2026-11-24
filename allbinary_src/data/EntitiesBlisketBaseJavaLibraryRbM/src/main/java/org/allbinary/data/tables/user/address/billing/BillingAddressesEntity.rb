#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.data.tables.user.address.billing

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/user/address/StreetAddressesEntity"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Billing

class BillingAddressesEntity < ::Org::Allbinary::DataPackage::Tables::User::Address::StreetAddressesEntity
    attr_accessor :TABLENAME

    def jfields_org_allbinary_data_tables_user_address_billing_BillingAddressesEntity
        @TABLENAME = "billing"
    end
    

    def initialize(userName)
        super(userName)
        jfields_org_allbinary_data_tables_user_address_billing_BillingAddressesEntity
        setTableName(@TABLENAME)
    end
end

end; end; end; end; end; end; end

