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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, SpecialMessageUtil.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SpecialMessageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :Memory, "org/allbinary/system/Memory"
autoload :GameStatisticsFactory, "org/allbinary/canvas/GameStatisticsFactory"

begin
    SpecialMessageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

