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
# package org.allbinary.thirdparty.store


module ::Org; module Allbinary; module Thirdparty; module Store

class ThirdPartyStore
    attr_accessor :authorized, :name

    def jfields_org_allbinary_thirdparty_store_ThirdPartyStore
        @authorized = false unless instance_variable_defined?(:@authorized)
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(name)
        jfields_org_allbinary_thirdparty_store_ThirdPartyStore
        @name = name
    end
    

    def authorize(clientInformationInterface)
    end
    

    def isAuthorized()
        return @authorized
    end
    

    def setAuthorized(authorized)
        @authorized = authorized
    end
    

    def getName()
        return @name
    end
end

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end

end; end; end; end

