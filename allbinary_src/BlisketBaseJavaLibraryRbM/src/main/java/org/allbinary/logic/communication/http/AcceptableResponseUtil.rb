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
# package org.allbinary.logic.communication.http

require "java/lang/Object"

module ::Org; module Allbinary; module Logic; module Communication; module Http

class AcceptableResponseUtil
    attr_accessor :candidateVector, :tagNameVector

    def jfields_org_allbinary_logic_communication_http_AcceptableResponseUtil
        @candidateVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        @tagNameVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        jfields_org_allbinary_logic_communication_http_AcceptableResponseUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def self.static_init
        ::Org::Allbinary::TsUtil.getInstance().hashCode(AcceptableResponseFactory.getInstance().HTML)
    end
    

    def get(index)
        return @candidateVector.get(index)
    end
    

    def getTagName(index)
        return @tagNameVector.get(index)
    end
    

    def size()
        return @candidateVector.size()
    end

    def self.instance()
        AcceptableResponseUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AcceptableResponseUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AcceptableResponseUtil.new()
            static_init
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AcceptableResponseUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :AcceptableResponseFactory, "org/allbinary/logic/communication/http/AcceptableResponseFactory" unless const_defined?(:AcceptableResponseFactory, false)

begin
    AcceptableResponseUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

