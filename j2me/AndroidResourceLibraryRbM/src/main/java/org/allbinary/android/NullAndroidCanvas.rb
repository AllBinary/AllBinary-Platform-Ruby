# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.android


module ::Org; module Allbinary; module Android

class NullAndroidCanvas

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_CANVAS, ::Android::Graphics::Canvas.new())
            const_set(:NULL_MEDIA_PLAYER, ::Android::Media::MediaPlayer.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullAndroidCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_CANVAS, :NULL_MEDIA_PLAYER].include?(name)
        end
        super
    end
end

module ::Android; module Graphics; autoload :Canvas, "android/graphics/Canvas" unless const_defined?(:Canvas, false); end; end
module ::Android; module Media; autoload :MediaPlayer, "android/media/MediaPlayer" unless const_defined?(:MediaPlayer, false); end; end

begin
    NullAndroidCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

