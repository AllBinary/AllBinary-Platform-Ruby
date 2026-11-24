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


module ::Org; module Allbinary; module Media; module Audio

class PlayerQueue
    attr_accessor :commonStrings, :list, :max

    def jfields_org_allbinary_media_audio_PlayerQueue
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @max = nil unless instance_variable_defined?(:@max)
    end
    

    def initialize(max)
        jfields_org_allbinary_media_audio_PlayerQueue
        @max = max
    end
    

    def add(sound)
        begin
            if !@list.contains(sound)
                @list.add(sound)
            end
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD)
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
            resource = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if sound != nil
                resource = sound.getResource()
            end
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(resource).to_s, self, @commonStrings.PROCESS)
            return false
        end
    end
    

    def clear()
        @list.clear()
    end
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(PlayerQueue::TOTAL).appendint(@list.size()).to_s
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :NoSound, "org/allbinary/media/audio/NoSound" unless const_defined?(:NoSound, false)
autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false)

begin
    PlayerQueue.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

