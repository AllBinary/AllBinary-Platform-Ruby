# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary


module ::Org; module Allbinary

class DisposalUtil
    

    def self.getInstance()
        return DisposalUtil.instance
    end
    

    def dispose(resource)
        if !resource.isDisposed()
            resource.dispose()
        end
    end

    def self.instance()
        DisposalUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DisposalUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DisposalUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DisposalUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Eclipse; module Swt; module Graphics; autoload :Resource, "org/eclipse/swt/graphics/Resource" unless const_defined?(:Resource, false); end; end; end; end

begin
    DisposalUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

