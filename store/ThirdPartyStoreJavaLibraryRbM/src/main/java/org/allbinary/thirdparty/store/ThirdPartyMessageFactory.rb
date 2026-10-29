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


class ThirdPartyMessageFactory
    attr_accessor :AUTHORIZED, :NOT_AUTHORIZED, :LINKAGE_ERROR

    def initialize_fields
        @AUTHORIZED = "Authorized"
        @NOT_AUTHORIZED = "Not Authorized"
        @LINKAGE_ERROR = "Linkage Error"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThirdPartyMessageFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ThirdPartyMessageFactory
    @@instance = ThirdPartyMessageFactory.new()
end

