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
# package org.allbinary.business.user.modules.configuration


module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration

class UserConfigurationData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "USER_CONFIGURATION_NAME")
        begin
            const_set(:UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Io::FilePackage::CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION)
            const_set(:ENCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Io::FilePackage::CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserConfigurationData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME, :UNCRYPTED_EXTENSION, :ENCRYPTED_EXTENSION].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :CommonDataFileStrings, "org/allbinary/logic/io/file/CommonDataFileStrings" unless const_defined?(:CommonDataFileStrings, false); end; end; end; end; end

begin
    UserConfigurationData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

