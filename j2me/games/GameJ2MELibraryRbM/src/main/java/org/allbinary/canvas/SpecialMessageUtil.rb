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
# package org.allbinary.canvas


class SpecialMessageUtil
    

    def self.getInstance()
        return SpecialMessageUtil::SINGLETON
    end
    

    def get()
        stringBuffer = StringMaker.new()
        stringBuffer.append(Memory.getInfo())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(GameStatisticsFactory.getInstance().to_s)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(" Option: ")
        if Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT)
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT.getName())
        else
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_MINIMUM.getName())
        end
        return stringBuffer.to_s
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/system/Memory"
require "org/allbinary/canvas/GameStatisticsFactory"

class SpecialMessageUtil
    SINGLETON = SpecialMessageUtil.new()
end

