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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerManager"

module ::Org; module Allbinary; module Game; module Input

class OptimizedGameInputLayerManager < ::Org::Allbinary::Layer::LayerManager
    

    def initialize()
        super(::Org::Allbinary::Layer::LayerManagerNoDebug.getInstance())
    end
end

module ::Org; module Allbinary; module Layer; autoload :LayerManagerNoDebug, "org/allbinary/layer/LayerManagerNoDebug" unless const_defined?(:LayerManagerNoDebug, false); end; end; end

end; end; end; end

