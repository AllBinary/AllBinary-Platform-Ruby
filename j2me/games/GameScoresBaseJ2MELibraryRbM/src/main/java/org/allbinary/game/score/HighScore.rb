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

# require "java/io/ByteArrayOutputStream"
# require "java/io/DataOutputStream"

class HighScore
    attr_accessor :id, :name, :gameInfo, :score, :scoreString

    def initialize_fields
        @id = nil
        @name = nil
        @gameInfo = nil
        @score = nil
        @scoreString = nil
    end
    

    def initialize(id, name, gameInfo, score)
        initialize_fields
        @id = id
        @name = name
        @gameInfo = gameInfo
        @score = score
        @scoreString = (@score).to_s
    end
    

    def getId()
        return @id
    end
    

    def getName()
        return @name
    end
    

    def getScore()
        return @score
    end
    

    # throws Exception
    def getAsBytes()
        byteArrayOutputStream = ByteArrayOutputStream.new()
        outputStream = DataOutputStream.new(byteArrayOutputStream)
        outputStream.writeUTF(self.getName())
        outputStream.writeLong(self.getScore())
        return byteArrayOutputStream.toByteArray()
    end
    

    def getGameInfo()
        return @gameInfo
    end
    

    def getScoreString()
        return @scoreString
    end
    

    def setName(name)
        @name = name
    end
    

    def toString()
        commonSeps = CommonSeps.getInstance()
        return StringMaker.new().append(@name).append(commonSeps.COLON).appendlong(@score).append(commonSeps.FORWARD_SLASH).append(@scoreString).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/game/GameInfo"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

