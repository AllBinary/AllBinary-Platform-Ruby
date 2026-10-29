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
# package org.allbinary.game.combat.damage

require "org/allbinary/graphics/paint/Paintable"

class DamageFloaters < Paintable
    

    def self.getInstance()
        return DamageFloaters::SINGLETON
    end
    

    def add(damage)
    end
end

class DamageFloaters
    SINGLETON = DamageFloaters.new()
end

