# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# package org.allbinary.data.tables.generator


module ::Org; module Allbinary; module DataPackage; module Tables; module Generator

class IdGeneratorEntityFactory
    

    def initialize()
    end
    

    def self.getInstance()
        begin
            return IdGeneratorEntity.new()
        rescue StandardError => e
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, "ServerLicenseRequestEntityFactory", commonStrings.GET_INSTANCE, e)
            return nil
        end
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :IdGeneratorEntity, "org/allbinary/data/tables/generator/IdGeneratorEntity" unless const_defined?(:IdGeneratorEntity, false)
autoload :IdGeneratorEntityInterface, "org/allbinary/data/tables/generator/IdGeneratorEntityInterface" unless const_defined?(:IdGeneratorEntityInterface, false)

end; end; end; end; end

