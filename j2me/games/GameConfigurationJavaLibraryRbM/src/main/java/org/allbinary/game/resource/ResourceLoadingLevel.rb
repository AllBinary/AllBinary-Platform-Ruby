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
# package org.allbinary.game.resource


module ::Org; module Allbinary; module Game; module Resource

class ResourceLoadingLevel
    attr_accessor :name, :level

    def jfields_org_allbinary_game_resource_ResourceLoadingLevel
        @name = nil unless instance_variable_defined?(:@name)
        @level = nil unless instance_variable_defined?(:@level)
    end
    

    def initialize(name, level)
        jfields_org_allbinary_game_resource_ResourceLoadingLevel
        @name = name
        @level = level
    end
    

    def getLevel()
        return @level
    end
    

    def getName()
        return @name
    end
end

end; end; end; end

