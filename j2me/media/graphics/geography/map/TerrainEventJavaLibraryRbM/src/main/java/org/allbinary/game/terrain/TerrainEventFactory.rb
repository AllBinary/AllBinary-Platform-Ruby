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
# package org.allbinary.game.terrain

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface"

module ::Org; module Allbinary; module Game; module Terrain

class TerrainEventFactory
    include ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObjectFactoryInterface
    

    def initialize()
    end
    

    def getInstance()
        return TerrainEvent.new(::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
autoload :TerrainEvent, "org/allbinary/game/terrain/TerrainEvent" unless const_defined?(:TerrainEvent, false)

end; end; end; end

