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
# package views.generic.inventory

require "views/admin/inventory/listings/InventoryViewSearchInterface"

class InventorySearch
    include InventoryViewSearchInterface
    attr_accessor :logUtil, :commonStrings, :basicItemData, :searchRequest

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @searchRequest = nil
    end
    

    def initialize(searchRequest)
        super()
        initialize_fields
        @searchRequest = searchRequest
    end
    

    # throws Exception
    def searchSingleStaticPage()
        begin
            storeFront = @searchRequest.getStoreFront()
            searchParams = @searchRequest.getParams()
            columnValueHashMap = searchParams.get()
            file = StaticPagesEntity.new().getFile(storeFront.getName(), Replace.new("-", CommonSeps.getInstance().SPACE).all(columnValueHashMap.get(@basicItemData.KEYWORDS)))
            if StringValidationUtil.getInstance().isEmpty(file)
                return nil
            else
                stringBuffer = StringMaker.new()
                stringBuffer.append(storeFront.getCurrentHostName())
                stringBuffer.append(storeFront.getCurrentHostNamePath())
                stringBuffer.append(storeFront.getStaticPath())
                stringBuffer.append(file)
                stringBuffer.append(@searchRequest.getParams().getEndPage())
                stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
                stringBuffer.append(InputOutputTypeData.getInstance().DEFAULT)
                filePath = Replace.new(CommonSeps.getInstance().SPACE, "%20").all(stringBuffer.to_s)
                return filePath
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "searchSingleStaticPage", e)
            end
            raise StandardError.new("Failed retrieve Single Product Page Static")
        end
    end
    

    # throws Exception
    def searchSingleDynamicPage()
        begin
            str = self.search()
            return str[@searchRequest.getParams().getStartPageInt().to_i]
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "searchSingleDynamicPage", e)
            end
            raise StandardError.new("Failed retrieve Single Product Page Dynamically")
        end
    end
    

    # throws Exception
    def search()
        abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        inventorySearchUtil = InventorySearchUtil.getInstance()
        vector = inventorySearchUtil.getBasicItemIdColumn(@searchRequest)
        return inventorySearchUtil.search(abeClientInformation, @searchRequest, vector)
    end
    

    # throws Exception
    def getProduct(product)
        abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        return InventorySearchProductUtil.getInstance().getProduct(abeClientInformation, @searchRequest, product)
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
autoload :StaticPagesEntity, "org/allbinary/data/tables/staticpages/StaticPagesEntity"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams"
autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest"
autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :InventorySearchProductUtil, "views/generic/inventory/InventorySearchProductUtil"
autoload :InventorySearchUtil, "views/generic/inventory/InventorySearchUtil"

