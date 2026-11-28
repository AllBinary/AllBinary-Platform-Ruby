# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary


module ::Org; module Allbinary

class AndroidResources
    attr_accessor :drawable, :id, :layout, :raw, :string

    def jfields_org_allbinary_AndroidResources
        @drawable = ::Org::Allbinary::Game::Testgamedemo::R::drawable.new()
        @id = ::Org::Allbinary::Game::Testgamedemo::R::id.new()
        @layout = ::Org::Allbinary::Game::Testgamedemo::R::layout.new()
        @raw = ::Org::Allbinary::Game::Testgamedemo::R::raw.new()
        @string = ::Org::Allbinary::Game::Testgamedemo::R::string.new()
    end

    def initialize
        jfields_org_allbinary_AndroidResources
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        AndroidResources.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AndroidResources.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AndroidResources.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Testgamedemo; autoload :R, "org/allbinary/game/testgamedemo/R" unless const_defined?(:R, false); end; end; end; end

begin
    AndroidResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

