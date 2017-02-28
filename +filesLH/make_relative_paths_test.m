function make_relative_paths_test

fileListV = {which('classify_lh.m'),  which('EnumLH.m'),  which('statsLH.std_w')};

[relPathV, baseDir] = filesLH.make_relative_paths(fileListV);

% Check that original paths can be reassembled
for i1 = 1 : length(fileListV)
   fullPath = fullfile(baseDir, relPathV{i1});
   assert(isequal(fullPath,  fileListV{i1}),  'Files not equal');
end



end