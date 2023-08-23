

function execfunc(func,fdin,fparam,fdout)

    % read json
    din     = jsondecode(fileread(fdin));
    param   = jsondecode(fileread(fparam));

    % dynamic exec
    dout = eval(sprintf('%s(din,param)',func));

    % remove "
    json_str = string(jsonencode(jsonencode(dout)));
    json_str = strip(json_str,'both','"');

    % write json
    fileID = fopen(fdout, 'w');
    fprintf(fileID, json_str);
    fclose(fileID);

end