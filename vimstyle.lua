local split = function(input) return string.gmatch(input, "([^ ])+") end

function map(mode, key, val)
    if not mode then
        mode = {'n', 'v', 'o'}
    end
    vim.keymap.set(mode, key, val, {remap = true});
end

function noremap(mode, key, val)
    if not mode then
        mode = {'n', 'v', 'o'}
    end
    vim.keymap.set(mode, key, val, {remap = true});
end
