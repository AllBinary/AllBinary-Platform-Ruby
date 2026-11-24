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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types

class TransactionType
    attr_accessor :name

    def jfields_org_allbinary_business_user_commerce_money_payment_types_TransactionType
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(name)
        jfields_org_allbinary_business_user_commerce_money_payment_types_TransactionType
        @name = name
    end
    

    def isEqual(transactionType)
        if (self.to_s <=> transactionType.to_s) == 0
            return true
        else
            return false
        end
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

end; end; end; end; end; end; end; end

