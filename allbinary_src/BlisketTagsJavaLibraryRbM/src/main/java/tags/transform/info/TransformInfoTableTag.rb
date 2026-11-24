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
# package tags.transform.info

require "java/lang/JavaOverload"
require "admin/tags/TableTag"

module ::Tags; module Transform; module Info

class TransformInfoTableTag < ::Admin::Tags::TableTag
    

    def initialize()
        super()
        self.setTagHelperFactory(::Taghelpers::Transform::Info::TransformInfoHelperFactory.new())
    end
end

module ::Taghelpers; module Transform; module Info; autoload :TransformInfoHelperFactory, "taghelpers/transform/info/TransformInfoHelperFactory" unless const_defined?(:TransformInfoHelperFactory, false); end; end; end

end; end; end

