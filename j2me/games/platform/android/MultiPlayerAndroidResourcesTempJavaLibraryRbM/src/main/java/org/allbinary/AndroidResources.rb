# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary


class AndroidResources
    attr_accessor :drawable, :id, :layout, :raw, :string

    def initialize_fields
        @drawable = drawable.new()
        @id = id.new()
        @layout = layout.new()
        @raw = raw.new()
        @string = string.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AndroidResources.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/testgamedemo/R"

class AndroidResources
    @@instance = AndroidResources.new()
end

