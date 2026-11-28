# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game


module ::Org; module Allbinary; module Game

class BasicGameInfoFactory
    attr_accessor :currentReleaseIndex, :currentDestroyIndex, :total

    def jfields_org_allbinary_game_BasicGameInfoFactory
        @currentReleaseIndex = 0 unless instance_variable_defined?(:@currentReleaseIndex)
        @currentDestroyIndex = 0 unless instance_variable_defined?(:@currentDestroyIndex)
        @total = 0 unless instance_variable_defined?(:@total)
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def initialize()
        jfields_org_allbinary_game_BasicGameInfoFactory
    end
    

    def init(total)
        @currentReleaseIndex = 0
        @currentDestroyIndex = 0
        @total = total
    end
    

    def isPeaked()
        if @currentDestroyIndex >= @total
            return true
        else
            return false
        end
    end
    

    def howManyLeft()
        return @total - @currentDestroyIndex
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, BasicGameInfoFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicGameInfoFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

begin
    BasicGameInfoFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

