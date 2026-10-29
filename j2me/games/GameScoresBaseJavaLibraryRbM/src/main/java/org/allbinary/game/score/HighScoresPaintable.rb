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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/color/ColorChangeListener"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

class HighScoresPaintable < Paintable
    include ColorChangeListener
    include UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :myFontProcessor, :basicColor, :highScores, :anchor, :charHeight

    def initialize_fields
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @basicColor = BasicColorFactory.getInstance().WHITE
        @highScores = NullHighScoresSingletonFactory.getInstance()
        @anchor = Anchor::TOP_LEFT
        @charHeight = 0
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @charHeight = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def onEvent(eventObject)
        colorChangeEvent = eventObject
        @basicColor = colorChangeEvent.getBasicColorP()
    end
    

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
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def setHighScores(highScores)
        @highScores = highScores
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/ColorChangeEvent"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/score/HighScore"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/NullHighScoresSingletonFactory"

