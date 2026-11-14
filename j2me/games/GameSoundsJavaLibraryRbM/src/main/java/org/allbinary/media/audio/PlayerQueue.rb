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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TOTAL, "Sounds In Queue: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlayerQueue"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TOTAL].include?(name)
        end
        super
    end
end

autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :NoSound, "org/allbinary/media/audio/NoSound"
autoload :Sound, "org/allbinary/media/audio/Sound"

begin
    PlayerQueue.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

