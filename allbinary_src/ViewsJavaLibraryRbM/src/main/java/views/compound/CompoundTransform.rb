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
# package views.compound

# require "java/io/InputStream"
# require "javax/xml/transform/URIResolver"
require "org/allbinary/logic/visual/transform/AbTransformer"

class CompoundTransform < AbTransformer
    attr_accessor :logUtil, :abeClientInformation

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        self.setURIResolver(StoreUriResolver.new(self.getTransformInfoInterface(), self.getURIResolver()))
        objectConfig = CompoundContextTransformInfoObjectConfig.new(@abeClientInformation, self.getTransformInfoInterface(), self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc())
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("\nObjectConfig: \n" + objectConfig.to_s, self, @commonStrings.CONSTRUCTOR)
        end
        templateInputStream = objectConfig.createInputStream()
        self.setInputStream(templateInputStream)
    end
end

autoload :BasicUriResolver, "org/allbinary/data/tree/dom/BasicUriResolver"
autoload :StoreUriResolver, "org/allbinary/data/tree/dom/StoreUriResolver"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CompoundContextTransformInfoObjectConfig, "views/compound/objectConfig/CompoundContextTransformInfoObjectConfig"

