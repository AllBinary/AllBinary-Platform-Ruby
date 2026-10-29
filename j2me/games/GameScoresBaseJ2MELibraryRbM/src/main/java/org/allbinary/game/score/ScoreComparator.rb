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

# require "java/io/ByteArrayInputStream"
# require "java/io/DataInputStream"
# require "java/io/EOFException"
# require "java/io/IOException"
# require "javax/microedition/rms/RecordComparator"

class ScoreComparator
    include RecordComparator
    attr_accessor :logUtil, :isHighestBest

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @isHighestBest = nil
    end
    

    def initialize(isHighestBest)
        initialize_fields
        @isHighestBest = isHighestBest
    end
    

    def getBestScore()
        return (@isHighestBest ? 9223372036854775807 : 0)
    end
    

    def compare(recordOne, recordTwo)
        byteArrayInputStreamOne = ByteArrayInputStream.new(recordOne)
        inputStreamOne = DataInputStream.new(byteArrayInputStreamOne)
        byteArrayInputStreamTwo = ByteArrayInputStream.new(recordTwo)
        inputStreamTwo = DataInputStream.new(byteArrayInputStreamTwo)
        scoreOne = 0
        scoreTwo = 0
        begin
            inputStreamOne.readUTF()
            inputStreamTwo.readUTF()
            scoreOne = inputStreamOne.readLong()
            scoreTwo = inputStreamTwo.readLong()
        rescue EOFException => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "compare", e)
        rescue IOError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "compare", e)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "compare", e)
        end
        if @isHighestBest
            return self.getHighTooLow(scoreOne, scoreTwo)
        else
            return self.getLowTooHigh(scoreOne, scoreTwo)
        end
    end
    

    def getHighTooLow(scoreOne, scoreTwo)
        if scoreOne > scoreTwo
            return RecordComparator::PRECEDES
        elsif scoreOne < scoreTwo
            return RecordComparator::FOLLOWS
        else
            return RecordComparator::EQUIVALENT
        end
    end
    

    def getLowTooHigh(scoreOne, scoreTwo)
        if scoreOne < scoreTwo
            return RecordComparator::PRECEDES
        elsif scoreOne > scoreTwo
            return RecordComparator::FOLLOWS
        else
            return RecordComparator::EQUIVALENT
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

