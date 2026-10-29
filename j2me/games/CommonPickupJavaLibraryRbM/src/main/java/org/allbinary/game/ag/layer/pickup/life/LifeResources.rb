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
# package org.allbinary.game.ag.layer.pickup.life


class LifeResources
    attr_accessor :RESOURCE

    def initialize_fields
        @RESOURCE = "life_drop_20_by_20.png"
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return LifeResources::SINGLETON
    end
end

class LifeResources
    SINGLETON = LifeResources.new()
end

