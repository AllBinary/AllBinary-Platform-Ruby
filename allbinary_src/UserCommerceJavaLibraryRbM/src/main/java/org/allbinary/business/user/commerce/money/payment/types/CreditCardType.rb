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


class CreditCardType
    attr_accessor :name

    def initialize_fields
        @name = nil
    end
    

    def initialize(cardType)
        initialize_fields
        @name = cardType
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAXLEN, 19)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CreditCardType"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAXLEN].include?(name)
        end
        super
    end
end

begin
    CreditCardType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

