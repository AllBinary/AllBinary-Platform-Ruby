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
# package org.allbinary.business.installer


module ::Org; module Allbinary; module Business; module Installer

class Portion
    attr_accessor :current, :total

    def jfields_org_allbinary_business_installer_Portion
        @current = nil unless instance_variable_defined?(:@current)
        @total = nil unless instance_variable_defined?(:@total)
    end
    

    def initialize(hashMap)
        jfields_org_allbinary_business_installer_Portion
        @current = hashMap.get("current")
        @total = hashMap.get("total")
    end
    

    def getCurrent()
        return @current
    end
    

    def getTotal()
        return @total
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end

end; end; end; end

