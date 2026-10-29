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
# package org.allbinary.input.automation.module.game

# require "java/awt/image/BufferedImage"
require "org/allbinary/input/automation/module/game/MagicGameObjectInterface"
require "org/allbinary/input/automation/module/game/MeteredGameObject"

class MagicGameObject < MeteredGameObject
    include MagicGameObjectInterface
    attr_accessor :MP_LABEL

    def initialize_fields
        @MP_LABEL = "MP:"
    end
    

    def initialize(bufferedImage, minX, maxX, y)
        super(bufferedImage, minX, maxX, y)
        initialize_fields
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(@MP_LABEL)
        stringBuffer.append(super.to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

