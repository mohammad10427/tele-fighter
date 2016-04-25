local function run(msg, matches)    
    local link = '🔞 سایت xxnx :\nhttp://www.xnxx.com/?k='..URL.escape(matches[1])
    local link = link..'\n\n🔞 سایت Beeg :\nhttp://beeg.com/search?q='..URL.escape(matches[1])
    local link = link..'\n\n🔞 سایت Pornhub :\nhttp://www.pornhub.com/video/search?search='..URL.escape(matches[1])
    local link = link..'\n\n🔞 سایت Redtube :\nhttp://www.redtube.com/?search='..URL.escape(matches[1])
    local link = link..'\n\n🔞 سایت Youporn :\nhttp://www.youporn.com/search/?query='..URL.escape(matches[1])
    local link = link..'\n\n🔞 سایت Tnaflix :\nhttps://www.tnaflix.com/search.php?what='..URL.escape(matches[1])
    local link = link..'\n\n🔞 سایت DirtyPornVids :\nhttp://www.dirtypornvids.com/search-'..URL.escape(matches[1])..'/1.html'
    return link
end
return {
    patterns = {
        "^[/!#]porn (.*)"
    },
run = run
}
