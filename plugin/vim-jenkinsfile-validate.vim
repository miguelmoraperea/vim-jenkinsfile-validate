nnoremap <silent> <Plug>VimJenkinsfileValidate :lua require("vim-jenkinsfile-validate").validate(vim.api.nvim_exec("echo expand('%:p')", true))<CR>
