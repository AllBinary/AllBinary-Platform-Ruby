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
# package org.allbinary.animation.resource

require "java/lang/JavaOverload"
require "org/allbinary/game/configuration/feature/GameFeatureControlledInterface"
require "org/allbinary/game/resource/RectangleResourceFactoryInterface"
require "org/allbinary/animation/resource/ResourceAnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Resource

module FeatureResourceAnimationInterfaceFactoryInterface
    include ResourceAnimationInterfaceFactoryInterface
    include ::Org::Allbinary::Game::Resource::RectangleResourceFactoryInterface
    include ::Org::Allbinary::Game::Configuration::Feature::GameFeatureControlledInterface
    

    def getHashtable()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getHashtable, 0
end

module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end

