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
# package org.allbinary.game.health


module ::Org; module Allbinary; module Game; module Health

class HealthBarFactory
    

    # throws Exception
    def getInstance(layerInterface, healthInterface, location, direction)
        if ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureUtil.getInstance().isAnyThreed()
            featuredAnimationInterfaceFactoryInterfaceFactory = ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
            healthBarAnimationInterfaceFactory = featuredAnimationInterfaceFactoryInterfaceFactory.get(Health::NAME)
            return HealthBar.new(layerInterface, healthInterface, healthBarAnimationInterfaceFactory.getInstanceByLocation(layerInterface, location), direction)
        else
            return HealthBar.new(layerInterface, healthInterface, HealthBarTwodAnimation.new(layerInterface, location), direction)
        end
    end
end

module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false)
autoload :HealthBar, "org/allbinary/game/health/HealthBar" unless const_defined?(:HealthBar, false)
autoload :HealthBarAnimationInterfaceFactory, "org/allbinary/game/health/HealthBarAnimationInterfaceFactory" unless const_defined?(:HealthBarAnimationInterfaceFactory, false)
autoload :HealthBarTwodAnimation, "org/allbinary/game/health/HealthBarTwodAnimation" unless const_defined?(:HealthBarTwodAnimation, false)

end; end; end; end

