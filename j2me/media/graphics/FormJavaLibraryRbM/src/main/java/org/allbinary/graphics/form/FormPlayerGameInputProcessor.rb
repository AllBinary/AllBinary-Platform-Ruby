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
# package org.allbinary.graphics.form

require "java/lang/JavaOverload"
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Graphics; module Form

class FormPlayerGameInputProcessor < ::Org::Allbinary::Canvas::Processor
    attr_accessor :playerGameInputCompositeInterface

    def jfields_org_allbinary_graphics_form_FormPlayerGameInputProcessor
        @playerGameInputCompositeInterface = nil unless instance_variable_defined?(:@playerGameInputCompositeInterface)
    end
    

    def initialize(playerGameInputCompositeInterface)
        super()
        jfields_org_allbinary_graphics_form_FormPlayerGameInputProcessor
        @playerGameInputCompositeInterface = playerGameInputCompositeInterface
    end
    

    # throws Exception
    def process()
        @playerGameInputCompositeInterface.getPlayerGameInput().update()
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Game; module Input; autoload :PlayerGameInputCompositeInterface, "org/allbinary/game/input/PlayerGameInputCompositeInterface" unless const_defined?(:PlayerGameInputCompositeInterface, false); end; end; end; end

end; end; end; end

