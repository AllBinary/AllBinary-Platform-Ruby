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
# package org.allbinary.game.score.displayable

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/CustomTextBox"

module ::Org; module Allbinary; module Game; module Score; module Displayable

class HighScoreTextBox < ::Org::Allbinary::Graphics::Form::Item::CustomTextBox
    attr_accessor :virtualKeyboardEventHandler, :highScoreUtil, :pleaseWait, :paintable, :submitted

    def jfields_org_allbinary_game_score_displayable_HighScoreTextBox
        @virtualKeyboardEventHandler = ::Org::Allbinary::Input::Event::VirtualKeyboardEventHandler.getInstance()
        @highScoreUtil = nil unless instance_variable_defined?(:@highScoreUtil)
        @pleaseWait = ::Org::Allbinary::Graphics::Paint::SimpleTextPaintable.new(@commonStrings.PLEASE_WAIT, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)
        @paintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @submitted = false
    end
    

    def initialize(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor)
        super(cmdListener, "New High Score Enter Name:", name, 12, ::Javax::Microedition::Lcdui::TextField::ANY, ::Javax::Microedition::Lcdui::Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor)
        jfields_org_allbinary_game_score_displayable_HighScoreTextBox
        @highScoreUtil = HighScoreUtil.new(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        operatingSystemInterface = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if operatingSystemInterface.isOverScan()
            username = ::Org::Allbinary::Logic::System::Security::Licensing::InApplicationPurchaseFactory.getInstance().getUserName()
            self.getTextFieldItem().setString(username)
        end
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        ::Org::Allbinary::PostGameCommandFactory.getInstance().addCommands(self)
        self.addCommand(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    def open()
        @virtualKeyboardEventHandler.open()
        @paintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        HighScoreTextBox.superclass.java_super_method(:open, 0).bind(self).call()
    end
    java_overload :open, 0
    

    # throws Exception
    def close()
        @virtualKeyboardEventHandler.close()
        @paintable = @pleaseWait
        @repaintBehavior.onChangeRepaint(self)
        HighScoreTextBox.superclass.java_super_method(:close, 0).bind(self).call()
        self.removeCommand(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND)
        self.update()
        if @submitted
            @highScoreUtil.saveHighScore()
        else
        end
        @paintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @repaintBehavior.onChangeRepaint(self)
    end
    java_overload :close, 0
    

    # throws Exception
    def update()
        name = self.getTextFieldItem().getString()
        @highScoreUtil.update(name)
        HighScoreTextBox.superclass.java_super_method(:update, 0).bind(self).call()
    end
    java_overload :update, 0
    

    def paint(graphics)
        HighScoreTextBox.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        @paintable.paint(graphics)
    end
    java_overload :paint, 1
    

    def saveHighScore()
        @highScoreUtil.saveHighScore()
    end
    java_overload :saveHighScore, 0
    

    def submit()
        @highScoreUtil.submit(self)
    end
    java_overload :submit, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :TextField, "javax/microedition/lcdui/TextField" unless const_defined?(:TextField, false); end; end; end
module ::Org; module Allbinary; autoload :PostGameCommandFactory, "org/allbinary/PostGameCommandFactory" unless const_defined?(:PostGameCommandFactory, false); end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface" unless const_defined?(:HighScoresHelperBaseInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface" unless const_defined?(:HighScoresFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :SimpleTextPaintable, "org/allbinary/graphics/paint/SimpleTextPaintable" unless const_defined?(:SimpleTextPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Event; autoload :VirtualKeyboardEventHandler, "org/allbinary/input/event/VirtualKeyboardEventHandler" unless const_defined?(:VirtualKeyboardEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :InApplicationPurchaseFactory, "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory" unless const_defined?(:InApplicationPurchaseFactory, false); end; end; end; end; end; end
autoload :HighScoreUtil, "org/allbinary/game/score/displayable/HighScoreUtil" unless const_defined?(:HighScoreUtil, false)

end; end; end; end; end

