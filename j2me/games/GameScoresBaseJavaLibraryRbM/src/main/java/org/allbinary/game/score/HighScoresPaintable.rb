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
# package org.allbinary.game.score

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/graphics/color/ColorChangeListener"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Score

class HighScoresPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    include ::Org::Allbinary::Graphics::Color::ColorChangeListener
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :myFontProcessor, :basicColor, :highScores, :anchor, :charHeight

    def jfields_org_allbinary_game_score_HighScoresPaintable
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
        @highScores = NullHighScoresSingletonFactory.getInstance()
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @charHeight = 0 unless instance_variable_defined?(:@charHeight)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_score_HighScoresPaintable
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @charHeight = font.getHeight()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def onEvent(eventObject)
        colorChangeEvent = eventObject
        @basicColor = colorChangeEvent.getBasicColorP()
    end
    java_overload :onEvent, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        width = @displayInfoSingleton.getLastWidth()
        height = @displayInfoSingleton.getLastHeight()
        graphics.setColor(self.getBasicColorP().to_i)
        heading = @highScores.getHeading()
        topScoresWidth = (graphics.getFont().stringWidth(heading) >> 1)
        charHeight = @charHeight
        graphics.drawString(heading, (width >> 1) - topScoresWidth, charHeight, @anchor)
        graphics.drawString(@highScores.getColumnOneHeading(), 10, charHeight * 3, @anchor)
        columnTwoHeading = @highScores.getColumnTwoHeading()
        columnTwoHeadingWidth = graphics.getFont().stringWidth(columnTwoHeading)
        graphics.drawString(columnTwoHeading, width - 10 - columnTwoHeadingWidth, charHeight * 3, @anchor)
        index = 4
        largestSecondColumnWidth = columnTwoHeadingWidth
        list = @highScores.getList()
        size = list.size()
        vectorIndex = 0
        highScore = nil
        while vectorIndex < size && charHeight * index < height - (charHeight * 2)
            highScore = list.objectArray[vectorIndex]
            nextScoreWidth = graphics.getFont().stringWidth(highScore.getScoreString())
            if nextScoreWidth > largestSecondColumnWidth
                largestSecondColumnWidth = nextScoreWidth
            end
            vectorIndex += 1
        end
        vectorIndex = 0
        while vectorIndex < size && charHeight * index < height - (charHeight * 2)
            highScore = list.objectArray[vectorIndex]
            graphics.drawString(highScore.getName(), 10, charHeight * index, @anchor)
            graphics.drawString(highScore.getScoreString(), width - 10 - largestSecondColumnWidth, charHeight * index, @anchor)
            index += 1
            vectorIndex += 1
        end
    end
    java_overload :paint, 1
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def setHighScores(highScores)
        @highScores = highScores
    end
    java_overload :setHighScores, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :ColorChangeEvent, "org/allbinary/graphics/color/ColorChangeEvent" unless const_defined?(:ColorChangeEvent, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false)
autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false)
autoload :NullHighScoresSingletonFactory, "org/allbinary/game/score/NullHighScoresSingletonFactory" unless const_defined?(:NullHighScoresSingletonFactory, false)

end; end; end; end

