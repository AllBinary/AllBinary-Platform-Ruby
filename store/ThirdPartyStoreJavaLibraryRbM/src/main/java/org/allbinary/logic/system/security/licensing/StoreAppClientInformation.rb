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
# package org.allbinary.logic.system.security.licensing

require "java/lang/JavaOverload"
require "org/allbinary/thirdparty/store/LongArrayIdentifierInterface"
require "org/allbinary/logic/system/security/licensing/AbeClientInformation"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class StoreAppClientInformation < AbeClientInformation
    include ::Org::Allbinary::Thirdparty::Store::LongArrayIdentifierInterface
    attr_accessor :longArrayIdentifier

    def jfields_org_allbinary_logic_system_security_licensing_StoreAppClientInformation
        @longArrayIdentifier = nil unless instance_variable_defined?(:@longArrayIdentifier)
    end
    

    def initialize(name, version, specialName, shortName, longArrayIdentifier)
        super(name, version, specialName, shortName)
        jfields_org_allbinary_logic_system_security_licensing_StoreAppClientInformation
        @longArrayIdentifier = longArrayIdentifier
    end
    

    def getLongArrayIdentifier()
        return @longArrayIdentifier
    end
    java_overload :getLongArrayIdentifier, 0
end

end; end; end; end; end; end

