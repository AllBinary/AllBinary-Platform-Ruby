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
require "org/allbinary/game/score/Scoreable"

module ::Org; module Allbinary; module Game; module Score

class NoScoreable < Scoreable
    

    def self.getInstance()
        return SINGLETON
    end
    

    def initialize()
        super(0)
    end
    

    def addPoints(points)
    end
    java_overload :addPoints, 1
    

    def removePoints(points)
    end
    java_overload :removePoints, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, NoScoreable.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoScoreable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

begin
    NoScoreable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

