function desired = transform(A)
Acell = num2cell(A,[1 2]); % put each page of A into a cell
Acell = reshape(Acell,size(A,3),1); %make the cell array a vector
desired = cell2mat(Acell);
end