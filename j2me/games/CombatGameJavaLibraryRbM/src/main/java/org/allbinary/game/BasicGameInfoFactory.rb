# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game


class BasicGameInfoFactory
    attr_accessor :currentReleaseIndex, :currentDestroyIndex, :total

    def initialize_fields
        @currentReleaseIndex = 0
        @currentDestroyIndex = 0
        @total = 0
    end
    

    def self.getInstance()
        return BasicGameInfoFactory::SINGLETON
    end
    

    def initialize()
        initialize_fields
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
end

class BasicGameInfoFactory
    SINGLETON = BasicGameInfoFactory.new()
end

