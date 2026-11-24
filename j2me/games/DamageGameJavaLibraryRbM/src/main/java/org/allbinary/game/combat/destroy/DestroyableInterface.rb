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
# package org.allbinary.game.combat.destroy

require "java/lang/JavaOverload"
require "org/allbinary/layer/NamedInterface"

module ::Org; module Allbinary; module Game; module Combat; module Destroy

module DestroyableInterface
    include ::Org::Allbinary::Layer::NamedInterface
    

    # throws Exception
    def isDestroyed()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isDestroyed, 0
end

end; end; end; end; end

