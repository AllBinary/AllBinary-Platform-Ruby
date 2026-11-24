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
# package org.allbinary.game.combat.destroy

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/combat/destroy/DestroyableInterface"

module ::Org; module Allbinary; module Game; module Combat; module Destroy

class DestroyableBaseBehavior
    include DestroyableInterface
    

    def self.getInstance()
        return DestroyableBaseBehavior.instance
    end
    

    def getName()
        return self.class.java_name
    end
    java_overload :getName, 0
    

    # throws Exception
    def isDestroyed()
        raise StandardError.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    java_overload :isDestroyed, 0
    

    def setDestroyed(destroyed)
    end
    java_overload :setDestroyed, 1

    def self.instance()
        DestroyableBaseBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DestroyableBaseBehavior.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DestroyableBaseBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DestroyableBaseBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    DestroyableBaseBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

