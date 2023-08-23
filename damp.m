function [dout] = damp(din,param)

    din1    = int32(din.din1);
    din2    = int32(din.din2);
    param1  = int32(param.param1);
    param2  = int32(param.param2);

    dout.dout1 = din1 * param1 + din2 * param2;

end