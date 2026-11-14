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
# package org.allbinary.game.multiplayer.layer


class MultiplayerBehavior
    

    def initialize(username)
    end
    

    def startTick()
    end
    

    def endTick()
    end
    

    def getApproximateElapsed()
        return 0
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_MULTIPLAYER_BEHAVIOR, MultiplayerBehavior.new(StringUtil.getInstance().EMPTY_STRING))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MultiplayerBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_MULTIPLAYER_BEHAVIOR].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    MultiplayerBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

