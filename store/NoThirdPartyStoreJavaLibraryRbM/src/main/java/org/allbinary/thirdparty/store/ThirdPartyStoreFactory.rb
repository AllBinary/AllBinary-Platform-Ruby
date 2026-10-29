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


class ThirdPartyStoreFactory
    

    def self.getInstance()
        return ThirdPartyStoreFactory.instance
    end
    

    def initialize()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/thirdparty/store/NoThirdPartyStore"
require "org/allbinary/thirdparty/store/ThirdPartyStore"

class ThirdPartyStoreFactory
    @@instance = NoThirdPartyStore.new()
end

