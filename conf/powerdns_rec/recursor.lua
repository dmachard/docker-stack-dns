local f = assert(io.popen('getent hosts tap | cut -d " " -f 1', 'r'))
local dnscollector = f:read('*a') or "127.0.0.1"
f:close()
dnscollector = string.gsub(dnscollector, "\n$", "")

dnstapFrameStreamServer(dnscollector.. ":6000", {
    logQueries=true,
    logResponses=true
})