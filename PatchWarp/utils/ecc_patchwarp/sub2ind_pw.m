    function [ind] = sub2ind_pw(arraySize,rowInd,colInd)
    % over ride matlabs func for this particular case 
        ind = rowInd + (colInd - 1).*arraySize(1); 
    end