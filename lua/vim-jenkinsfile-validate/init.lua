local M = {}

local function is_a_valid_jenkinsfile(file)

    if string.find(file, "Jenkinsfile") then
        return true
    end

    return false
end

M.validate = function(file_name)
    -- Print an empty line after silent vim command
    print(" ")

    if not is_a_valid_jenkinsfile(file_name) then
        print("Error: Not a valid Jenkinsfile.")
        return
    end

    if not vim.g.jenkins_url then
        print("Error: 'jenkins_url' variable not set.")
        return
    end

    local command = '!curl -X POST -F "jenkinsfile=<'..file_name..'" '..vim.g.jenkins_url..'/pipeline-model-converter/validate'
    print(vim.api.nvim_exec(command, true))
end

return M
