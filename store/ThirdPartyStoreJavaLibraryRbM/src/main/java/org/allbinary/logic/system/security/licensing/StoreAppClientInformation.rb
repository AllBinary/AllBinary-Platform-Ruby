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

require "org/allbinary/thirdparty/store/LongArrayIdentifierInterface"
require "org/allbinary/logic/system/security/licensing/AbeClientInformation"

class StoreAppClientInformation < AbeClientInformation
    include LongArrayIdentifierInterface
    attr_accessor :longArrayIdentifier

    def initialize_fields
        @longArrayIdentifier = nil
    end
    

    def initialize(name, version, specialName, shortName, longArrayIdentifier)
        super(name, version, specialName, shortName)
        initialize_fields
        @longArrayIdentifier = longArrayIdentifier
    end
    

    def getLongArrayIdentifier()
        return @longArrayIdentifier
    end
end

