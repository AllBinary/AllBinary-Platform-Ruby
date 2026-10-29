# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.image

# require "java/awt/image/BufferedImage"

class SpriteSplitterUtil
    attr_accessor :logUtil, :commonSeps, :commonStrings, :ANIMATIONS_LABELS, :DIRECTIONAL_ANIMATIONS, :HORIZONTAL_ANIMATIONS, :HORIZONTAL_SPRITE, :ROW_NAME, :_ROW

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @ANIMATIONS_LABELS = ["Row Total:", "Column Total:", "Column Total:", "Row Total:", "Column Total:", "Row Total:"]
        @DIRECTIONAL_ANIMATIONS = "Directional DLRU"
        @HORIZONTAL_ANIMATIONS = "Horizontal Animations"
        @HORIZONTAL_SPRITE = "Horizontal A=R=Y F=C=X"
        @ROW_NAME = ["idle", "walk", "attack", "defeat"]
        @_ROW = "_row"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return SpriteSplitterUtil.instance
    end
    

    # throws Exception
    def process(imageProcessorInput, totalFrames, totalAnimations, widthReduction, heightReduction, increaseWidth, increaseHeight, spriteType, visitor)
        bufferedImage = nil
        generatedBufferedImageArray = nil
        bufferedImageArray = imageProcessorInput.getBufferedImageArray()
        (0...bufferedImageArray.length).each do |index|
            bufferedImage = bufferedImageArray[index]
            @logUtil.putF(spriteType, self, @commonStrings.RUN)
            if spriteType == @HORIZONTAL_SPRITE
                cellHeight = bufferedImage.getHeight() / totalAnimations
                cellWidth = bufferedImage.getWidth() / totalFrames
                columns = totalFrames
                rows = totalAnimations
                generatedBufferedImageArray = Array.new(rows) { Array.new(columns, nil) }
                @logUtil.putF("Processing Individual Cells columns: " + (columns).to_s + " rows: " + (rows).to_s, self, @commonStrings.RUN)
                @logUtil.putF("Processing Individual Cells cellHeight: " + (cellHeight).to_s + " cellWidth: " + (cellWidth).to_s, self, @commonStrings.RUN)
                imageUtil = ImageUtil.getInstance()
                nameEnding = nil
                x = 0
                y = 0
                (0...rows).each do |index2|
                    y = cellHeight * index2
                    (0...columns).each do |index3|
                        x = cellWidth * index3
                        generatedBufferedImageArray[index2][index3] = bufferedImage.getSubimage(x + widthReduction, y + heightReduction, cellWidth - (widthReduction * 2), cellHeight - (heightReduction * 2))
                        if increaseWidth != 0 || increaseHeight != 0
                            generatedBufferedImageArray[index2][index3] = imageUtil.createBufferedImageAllowTranslate(generatedBufferedImageArray[index2][index3], cellWidth + increaseWidth, cellHeight + increaseHeight, false, true)
                        end
                        nameEnding = StringMaker.new().appendint(index2).append(@commonSeps.UNDERSCORE).appendint(index3).to_s
                        visitor.visit(generatedBufferedImageArray[index2][index3], nameEnding, index)
                    end
                end
                @logUtil.putF("Processing Rows from Cells", self, @commonStrings.RUN)
                imageUnifierProperties = ImageUnifierProperties.new()
                imageUnifierProperties.setRows((1).to_s)
                imageUnifierProperties.setColumns((columns).to_s)
                imageUnifierCell = ImageUnifierCell.new((cellWidth - (2 * widthReduction)).to_s, (cellHeight - (2 * heightReduction)).to_s)
                imageUnifierProperties.setImageUnifierCell(imageUnifierCell)
                (0...rows).each do |index2|
                    y = cellHeight * index2
                    tempBufferedImageArray = Array.new(columns, nil)
                    (0...columns).each do |index3|
                        tempBufferedImageArray[index3] = generatedBufferedImageArray[index2][index3]
                        nameEnding = StringMaker.new().appendint(index2).append(@commonSeps.UNDERSCORE).appendint(1).append(@_ROW).to_s
                    end
                    generatedBufferedImage = ImageUnifierUtil.getInstance().getImage(tempBufferedImageArray, imageUnifierProperties)
                    visitor.visit(generatedBufferedImage, nameEnding, index)
                end
            elsif spriteType == @HORIZONTAL_ANIMATIONS
            elsif spriteType == @DIRECTIONAL_ANIMATIONS
                totalFrames2 = 4
                cellHeight = bufferedImage.getHeight() / totalFrames2
                cellWidth = bufferedImage.getWidth() / totalAnimations
                columns = totalAnimations
                rows = totalFrames2
                generatedBufferedImageArray = Array.new(rows) { Array.new(columns, nil) }
                @logUtil.putF("Processing Individual Cells for each Direction", self, @commonStrings.RUN)
                nameEnding = nil
                x = 0
                y = 0
                (0...rows).each do |index2|
                    y = cellHeight * index2
                    (0...columns).each do |index3|
                        x = cellWidth * index3
                        generatedBufferedImageArray[index2][index3] = bufferedImage.getSubimage(x + widthReduction, y + heightReduction, cellWidth - (widthReduction * 2), cellHeight - (heightReduction * 2))
                        if increaseWidth != 0 || increaseHeight != 0
                            generatedBufferedImageArray[index2][index3] = ImageUtil.getInstance().createBufferedImageAllowTranslate(generatedBufferedImageArray[index2][index3], cellWidth + increaseWidth, cellHeight + increaseHeight, false, true)
                        end
                        nameEnding = StringMaker.new().append(@commonStrings.DIRECTION_NAME[index2]).append(@commonSeps.UNDERSCORE).appendint(index3).to_s
                        visitor.visit(generatedBufferedImageArray[index2][index3], nameEnding, index)
                    end
                end
                imageUnifierProperties = ImageUnifierProperties.new()
                imageUnifierProperties.setRows((1).to_s)
                imageUnifierProperties.setColumns((columns).to_s)
                imageUnifierCell = ImageUnifierCell.new((cellWidth - (2 * widthReduction)).to_s + increaseWidth, (cellHeight - (2 * heightReduction) + increaseHeight).to_s)
                imageUnifierProperties.setImageUnifierCell(imageUnifierCell)
                @logUtil.putF("Processing Rows from Cells for each Direction", self, @commonStrings.RUN)
                (0...rows).each do |index2|
                    y = cellHeight * index2
                    tempBufferedImageArray = Array.new(columns, nil)
                    (0...columns).each do |index3|
                        tempBufferedImageArray[index3] = generatedBufferedImageArray[index2][index3]
                        nameEnding = StringMaker.new().append(@commonStrings.DIRECTION_NAME[index2]).append(@commonSeps.UNDERSCORE).appendint(1).append(@_ROW).to_s
                    end
                    generatedBufferedImage = ImageUnifierUtil.getInstance().getImage(tempBufferedImageArray, imageUnifierProperties)
                    visitor.visit(generatedBufferedImage, nameEnding, index)
                end
            end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/image/ImageProcessedVisitor"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageUnifierCell"
require "org/allbinary/media/image/ImageUnifierProperties"
require "org/allbinary/media/image/ImageUnifierUtil"
require "org/allbinary/media/image/ImageUtil"

class SpriteSplitterUtil
    @@instance = SpriteSplitterUtil.new()
end

