# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.midlet


class LicenseCheckRunnableFactory
    

    def getInstance(specialDemoGameMidlet)
        return NullABRunnable.getInstance()
    end
end

require "org/allbinary/thread/ABRunnable"
require "org/allbinary/thread/NullABRunnable"
require "org/allbinary/game/midlet/SpecialDemoGameMidlet"

