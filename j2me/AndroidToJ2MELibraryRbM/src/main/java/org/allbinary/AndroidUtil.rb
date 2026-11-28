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
# package org.allbinary


module ::Org; module Allbinary

class AndroidUtil
    

    def self.isMemoryRestrictive()
        if @@version < 30
            return true
        end
        return false
    end
    

    def self.isAndroid()
        return true
    end

    def self.version()
        AndroidUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@version) ? @@version : nil
    end

    def self.version=(value)
        AndroidUtil.java_static_fields unless @java_static_fields_started
        @@version = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ACTIVITY, ::Android::App::Activity.new())
            @@version = Integer(::Android::Os::Build::VERSION.SDK)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ACTIVITY].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Android; module Os; autoload :Build, "android/os/Build" unless const_defined?(:Build, false); end; end

begin
    AndroidUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

