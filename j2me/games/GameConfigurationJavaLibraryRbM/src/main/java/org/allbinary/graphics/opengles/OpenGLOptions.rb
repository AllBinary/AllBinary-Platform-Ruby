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


module ::Org; module Allbinary; module Graphics; module Opengles

class OpenGLOptions
    

    def init()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(openGLFeatureFactory.OPENGL_OPTIONS)
            openGLMultipleList = ::Org::Allbinary::Util::BasicArrayListD.new()
            openGLMultipleList.add(openGLFeatureFactory.OPENGL)
            ::Org::Allbinary::Game::Configuration::Feature::GameFeatureChoiceGroups.getMultipleInstance().add("OpenGL (Complete Restart)", openGLMultipleList)
            openGLVersionSelectorMultipleList = ::Org::Allbinary::Util::BasicArrayListD.new()
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_AUTO_SELECT)
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_MINIMUM)
            ::Org::Allbinary::Game::Configuration::Feature::GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Version Selector", openGLVersionSelectorMultipleList)
            openGLImageColorMultipleList = ::Org::Allbinary::Util::BasicArrayListD.new()
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888)
            ::Org::Allbinary::Game::Configuration::Feature::GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Image Color RGBA", openGLImageColorMultipleList)
        end
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureChoiceGroups, "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" unless const_defined?(:GameFeatureChoiceGroups, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false)

end; end; end; end

