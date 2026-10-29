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
# package org.allbinary.graphics.opengles


class OpenGLOptions
    

    def init()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if Features.getInstance().isFeature(openGLFeatureFactory.OPENGL_OPTIONS)
            openGLMultipleList = BasicArrayListD.new()
            openGLMultipleList.add(openGLFeatureFactory.OPENGL)
            GameFeatureChoiceGroups.getMultipleInstance().add("OpenGL (Complete Restart)", openGLMultipleList)
            openGLVersionSelectorMultipleList = BasicArrayListD.new()
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_AUTO_SELECT)
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_MINIMUM)
            GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Version Selector", openGLVersionSelectorMultipleList)
            openGLImageColorMultipleList = BasicArrayListD.new()
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888)
            GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Image Color RGBA", openGLImageColorMultipleList)
        end
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"

