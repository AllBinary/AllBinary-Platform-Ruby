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
# package org.allbinary.graphics.form.item

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/visitor/Visitor"

module ::Org; module Allbinary; module Graphics; module Form; module Item

class LimitCommandsVisitor < ::Org::Allbinary::Logic::Util::Visitor::Visitor
    attr_accessor :isNotSmallDisplay

    def jfields_org_allbinary_graphics_form_item_LimitCommandsVisitor
        @isNotSmallDisplay = nil unless instance_variable_defined?(:@isNotSmallDisplay)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_graphics_form_item_LimitCommandsVisitor
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @isNotSmallDisplay = (displayInfo.isPortrait() && displayInfo.getLastHeight() > ::Org::Allbinary::Graphics::Form::ScreenInfo.getInstance().SMALL_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastHeight() > ::Org::Allbinary::Graphics::Form::ScreenInfo.getInstance().SMALL_HEIGHT)
    end
    

    def visit(anyType)
        command = anyType
        booleanFactory = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance()
        if @isNotSmallDisplay || command.getPriority() == 1 || command == ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().EXIT_COMMAND || command == ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND
            return booleanFactory.TRUE
        else
            return booleanFactory.FALSE
        end
    end
    java_overload :visit, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScreenInfo, "org/allbinary/graphics/form/ScreenInfo" unless const_defined?(:ScreenInfo, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end

end; end; end; end; end

