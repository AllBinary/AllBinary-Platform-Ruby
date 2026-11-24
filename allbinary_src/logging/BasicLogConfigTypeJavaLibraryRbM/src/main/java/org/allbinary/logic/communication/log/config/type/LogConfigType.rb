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
# package org.allbinary.logic.communication.log.config.type


module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type

class LogConfigType
    attr_accessor :name, :description

    def jfields_org_allbinary_logic_communication_log_config_type_LogConfigType
        @name = nil unless instance_variable_defined?(:@name)
        @description = nil unless instance_variable_defined?(:@description)
    end
    

    def initialize(name, description)
        jfields_org_allbinary_logic_communication_log_config_type_LogConfigType
        @name = name
        @description = description
    end
    

    def getName()
        return @name
    end
    

    def getDescription()
        return @description
    end
    

    def setName(value)
        @name = value
    end
    

    def setDescription(value)
        @description = value
    end
end

end; end; end; end; end; end; end

