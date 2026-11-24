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
# package org.allbinary.logic.communication.ftp.configuration

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/TableMappingInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Ftp; module Configuration

class FtpConfigurationMapping
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    attr_accessor :ftpConfigurationInterface

    def jfields_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationMapping
        @ftpConfigurationInterface = nil unless instance_variable_defined?(:@ftpConfigurationInterface)
    end
    

    def initialize(ftpConfigurationInterface)
        jfields_org_allbinary_logic_communication_ftp_configuration_FtpConfigurationMapping
        @ftpConfigurationInterface = ftpConfigurationInterface
    end
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(FtpConfigurationData::SERVER, @ftpConfigurationInterface.getServer())
        hashMap.put(FtpConfigurationData::USERNAME, @ftpConfigurationInterface.getUserName())
        hashMap.put(FtpConfigurationData::PASSWORD, @ftpConfigurationInterface.getPassword())
        hashMap.put(FtpConfigurationData::PATH, @ftpConfigurationInterface.getPath())
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def getKey()
        return FtpConfigurationData::NAME
    end
    java_overload :getKey, 0
    

    # throws Exception
    def toVector()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        vector.add(@ftpConfigurationInterface.getServer())
        vector.add(@ftpConfigurationInterface.getUserName())
        vector.add(@ftpConfigurationInterface.getPassword())
        vector.add(@ftpConfigurationInterface.getPath())
        return vector
    end
    java_overload :toVector, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :FtpConfigurationData, "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationData" unless const_defined?(:FtpConfigurationData, false)
autoload :FtpConfigurationInterface, "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationInterface" unless const_defined?(:FtpConfigurationInterface, false)

end; end; end; end; end; end

