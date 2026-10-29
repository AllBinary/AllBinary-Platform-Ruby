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
# package org.allbinary.business.user.commerce.money.payment.types


class AuthorizationTypeFactory
    attr_accessor :NONE, :VOICE, :RETINAL, :IMAGE, :DNA, :PRINT, :CHIP

    def initialize_fields
        @NONE = AuthorizationType.new("None")
        @VOICE = AuthorizationType.new("Voice")
        @RETINAL = AuthorizationType.new("Retinal")
        @IMAGE = AuthorizationType.new("Image")
        @DNA = AuthorizationType.new("DNA")
        @PRINT = AuthorizationType.new("Print")
        @CHIP = AuthorizationType.new("Chip")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AuthorizationTypeFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/user/commerce/money/payment/types/AuthorizationType"

class AuthorizationTypeFactory
    @@instance = AuthorizationTypeFactory.new()
end

