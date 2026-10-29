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


class AuthorizationType
    attr_accessor :name

    def initialize_fields
        @name = nil
    end
    

    def initialize(name)
        initialize_fields
        @name = name
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

