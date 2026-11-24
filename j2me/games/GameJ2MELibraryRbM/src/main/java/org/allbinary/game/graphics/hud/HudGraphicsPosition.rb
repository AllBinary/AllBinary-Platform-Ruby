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
# package org.allbinary.game.graphics.hud


module ::Org; module Allbinary; module Game; module Graphics; module Hud

class HudGraphicsPosition
    attr_accessor :anchor, :point

    def jfields_org_allbinary_game_graphics_hud_HudGraphicsPosition
        @anchor = 0 unless instance_variable_defined?(:@anchor)
        @point = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
    end
    

    def initialize(point, anchor)
        jfields_org_allbinary_game_graphics_hud_HudGraphicsPosition
        self.setAnchor(anchor)
        self.setPoint(point)
    end
    

    def getAnchor()
        return @anchor
    end
    

    def setAnchor(anchor)
        @anchor = anchor
    end
    

    def getPoint()
        return @point
    end
    

    def setPoint(point)
        @point = point
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_HUD_GRAPHICS_POSITION, HudGraphicsPosition.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, 9))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HudGraphicsPosition"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_HUD_GRAPHICS_POSITION].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end

begin
    HudGraphicsPosition.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

