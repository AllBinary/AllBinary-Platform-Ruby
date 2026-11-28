# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation


module ::Org; module Allbinary; module Animation

class PGUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def flattenCubicBezier(x0, y0, x1, y1, x2, y2, x3, y3, outX, outY, count, maxPoints)
        fixedPoint = FixedPoint.getInstance()
        steps = 10
        (1..steps).each do |i|
            t = fixedPoint.div(fixedPoint.toFixed((i).to_f), fixedPoint.toFixed(steps))
            mt = fixedPoint.ONE - t
            mt3 = fixedPoint.mul(fixedPoint.mul(mt, mt), mt)
            mt2t3 = 3 * fixedPoint.mul(fixedPoint.mul(mt, mt), t)
            mtt23 = 3 * fixedPoint.mul(fixedPoint.mul(mt, t), t)
            t3 = fixedPoint.mul(fixedPoint.mul(t, t), t)
            x = fixedPoint.mul(mt3, x0) + fixedPoint.mul(mt2t3, x1) + fixedPoint.mul(mtt23, x2) + fixedPoint.mul(t3, x3)
            y = fixedPoint.mul(mt3, y0) + fixedPoint.mul(mt2t3, y1) + fixedPoint.mul(mtt23, y2) + fixedPoint.mul(t3, y3)
            if count[0] < maxPoints
                outX[count[0]] = x
                outY[count[0]] = y
                count[0] += 1
            end
        end
    end

    def self.instance()
        PGUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PGUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PGUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PGUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :FixedPoint, "org/allbinary/animation/FixedPoint" unless const_defined?(:FixedPoint, false)

begin
    PGUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

