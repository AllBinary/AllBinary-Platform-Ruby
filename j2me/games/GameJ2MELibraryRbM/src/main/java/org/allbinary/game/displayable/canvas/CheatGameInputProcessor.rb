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
# package org.allbinary.game.displayable.canvas

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/game/input/PlayerGameInput"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class CheatGameInputProcessor < ::Org::Allbinary::Game::Input::PlayerGameInput
    attr_accessor :PROCESS_GAME, :gameCanvas, :gameKeyFactory

    def jfields_org_allbinary_game_displayable_canvas_CheatGameInputProcessor
        @PROCESS_GAME = "processGame"
        @gameCanvas = nil unless instance_variable_defined?(:@gameCanvas)
        @gameKeyFactory = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance()
    end
    

    def initialize(gameCanvas)
        super(::Org::Allbinary::Util::BasicArrayListD.new(), ::Org::Allbinary::Util::BasicArrayListD.new(), -1)
        jfields_org_allbinary_game_displayable_canvas_CheatGameInputProcessor
        @gameCanvas = gameCanvas
    end
    

    def update()
        java_monitor.synchronize do
        begin
            gameLayerManager = @gameCanvas.getLayerManager()
            list = self.getGameKeyEventList()
            size = list.size()
            (0...size).each do |index|
                anyType = list.objectArray[index]
                key = ::Org::Allbinary::Game::Input::Event::GameKeyEventUtil.getKey(anyType)
                if key == @gameKeyFactory.LEVEL_DOWN.getId()
                    CheatGameInputProcessor.inputProcessor.strafeLeft()
                    break
                elsif key == @gameKeyFactory.LEVEL_UP.getId()
                    CheatGameInputProcessor.inputProcessor.strafeRight()
                    break
                end
                if key == @gameKeyFactory.LEFT.getId()
                    CheatGameInputProcessor.inputProcessor.left()
                    break
                elsif key == @gameKeyFactory.RIGHT.getId()
                    CheatGameInputProcessor.inputProcessor.right()
                    break
                elsif key == @gameKeyFactory.UP.getId()
                    CheatGameInputProcessor.inputProcessor.up()
                    break
                elsif key == @gameKeyFactory.DOWN.getId()
                    CheatGameInputProcessor.inputProcessor.down()
                    break
                elsif key == @gameKeyFactory.KEY_NUM1.getId()
                    CheatGameInputProcessor.inputProcessor.special1(gameLayerManager, ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE)
                    break
                elsif key == @gameKeyFactory.KEY_NUM3.getId()
                    CheatGameInputProcessor.inputProcessor.special2(gameLayerManager, ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE)
                    break
                end
            end
            list.clear()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
        end
    end
    java_overload :update, 0

    def self.inputProcessor()
        CheatGameInputProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@inputProcessor) ? @@inputProcessor : nil
    end

    def self.inputProcessor=(value)
        CheatGameInputProcessor.java_static_fields unless @java_static_fields_started
        @@inputProcessor = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@inputProcessor = ::Org::Allbinary::Game::Layer::Special::SpecialGameInputFactory::NO_SPECIAL_GAME_INPUT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CheatGameInputProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventUtil, "org/allbinary/game/input/event/GameKeyEventUtil" unless const_defined?(:GameKeyEventUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :SpecialGameInputFactory, "org/allbinary/game/layer/special/SpecialGameInputFactory" unless const_defined?(:SpecialGameInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :SpecialGameInputInterface, "org/allbinary/game/layer/special/SpecialGameInputInterface" unless const_defined?(:SpecialGameInputInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

begin
    CheatGameInputProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

