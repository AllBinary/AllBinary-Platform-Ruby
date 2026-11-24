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
# package org.allbinary.logic.communication.smtp.configuration.user

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/TableMappingInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User

class UserEmailConfigurationMapping
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    attr_accessor :userEmailConfigurationInterface

    def jfields_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationMapping
        @userEmailConfigurationInterface = nil unless instance_variable_defined?(:@userEmailConfigurationInterface)
    end
    

    def initialize(userEmailConfigurationInterface)
        jfields_org_allbinary_logic_communication_smtp_configuration_user_UserEmailConfigurationMapping
        @userEmailConfigurationInterface = userEmailConfigurationInterface
    end
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def getKey()
        return UserEmailConfigurationData::NAME
    end
    java_overload :getKey, 0
    

    # throws Exception
    def toVector()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        return vector
    end
    java_overload :toVector, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :UserEmailConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData" unless const_defined?(:UserEmailConfigurationData, false)
autoload :UserEmailConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface" unless const_defined?(:UserEmailConfigurationInterface, false)

end; end; end; end; end; end; end

