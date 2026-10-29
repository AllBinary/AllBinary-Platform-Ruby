# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.input.form


class NullRTSFormInputFactory
    

    def self.getInstance()
        return NullRTSFormInputFactory::SINGLETON
    end
end

require "org/allbinary/game/identification/BasicGroupFactory"
require "org/allbinary/game/input/form/RTSFormInput"

class NullRTSFormInputFactory
    SINGLETON = RTSFormInput.new(BasicGroupFactory.getInstance().NONE_ARRAY)
end

