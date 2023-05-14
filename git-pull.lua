-- Config
local username = "LordAntonius"
local reponame = "myrepo"
local branch   = "master"

-- Code
local url = "https://raw.githubusercontent.com/" .. username .. "/" .. reponame .. "/" .. branch .."/"
if table.maxn(arg) == 0 then
    print("Usage : git-pull <files>")
else
    for k,v in pairs(arg) do
        if k != 0 then
            shell.run("rm", v)
            shell.run("wget",url .. v)
        end
    end
end