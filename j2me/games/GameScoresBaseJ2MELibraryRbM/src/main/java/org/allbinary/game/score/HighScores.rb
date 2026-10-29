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

require "org/allbinary/game/score/HighScoresInterface"

class HighScores
    include HighScoresInterface
    attr_accessor :orderedHighScoresList, :name, :heading, :columnOneHeading, :columnTwoHeading

    def initialize_fields
        @orderedHighScoresList = BasicArrayListD.new()
        @name = nil
        @heading = nil
        @columnOneHeading = "Name"
        @columnTwoHeading = nil
    end
    

    def initialize(name, heading, columnTwoHeading)
        initialize_fields
        @name = name
        @heading = heading
        @columnTwoHeading = columnTwoHeading
    end
    

    def setList(orderedHighScoresList)
        @orderedHighScoresList = orderedHighScoresList
    end
    

    def getList()
        return @orderedHighScoresList
    end
    

    def getName()
        return @name
    end
    

    def getTotal()
        return self.getList().size()
    end
    

    def addHighScore(newHighScore)
        @orderedHighScoresList.add(newHighScore)
    end
    

    def getHeading()
        return @heading
    end
    

    def getColumnOneHeading()
        return @columnOneHeading
    end
    

    def getColumnTwoHeading()
        return @columnTwoHeading
    end
    

    # throws Exception
    def isBestScore(newHighScore)
        return false
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("HighScores: ")
        stringBuffer.append(@heading)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(@orderedHighScoresList.size())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/score/HighScore"

