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
# package org.allbinary.media.audio


class PlayerQueue
    attr_accessor :commonStrings, :list, :max

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @list = BasicArrayListD.new()
        @max = nil
    end
    

    def initialize(max)
        initialize_fields
        @max = max
    end
    

    def add(sound)
        begin
            if !@list.contains(sound)
                @list.add(sound)
            end
        rescue StandardError => e
            PreLogUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD)
        end
    end
    

    def process()
        sound = NoSound.getInstance()
        begin
            played = false
            if @list.size() > 0
                sound = @list.removeAt(0)
                if sound != nil
                    sound.getPlayerP().start()
                end
                while @list.size() > @max
                    @list.removeAt(0)
                end
                played = true
            end
            return played
        rescue StandardError => e
            resource = StringUtil.getInstance().EMPTY_STRING
            if sound != nil
                resource = sound.getResource()
            end
            PreLogUtil.put(StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(resource).to_s, self, @commonStrings.PROCESS)
            return false
        end
    end
    

    def clear()
        @list.clear()
    end
    

    def toString()
        return StringMaker.new().append(PlayerQueue::TOTAL).appendint(@list.size()).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/media/audio/NoSound"
require "org/allbinary/media/audio/Sound"

class PlayerQueue
    TOTAL = "Sounds In Queue: "
end

