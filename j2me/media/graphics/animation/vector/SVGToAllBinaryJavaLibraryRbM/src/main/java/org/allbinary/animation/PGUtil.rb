# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation


class PGUtil
    

    def self.getInstance()
        return PGUtil.instance
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/animation/FixedPoint"

class PGUtil
    @@instance = PGUtil.new()
end

