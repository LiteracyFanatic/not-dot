config.load_autoconfig(False)
c.content.notifications = False
c.editor.command = ['xfce4-terminal', '-x', 'nvim', '{file}']
c.scrolling.bar = 'always'
c.content.register_protocol_handler = False
c.url.default_page = 'https://www.google.com/'
c.url.searchengines = {
    'DEFAULT': 'https://google.com/search?q={}',
    'm': 'https://mangadex.org/search?title={}',
    'j': 'https://jisho.org/search/{}',
    't': 'https://translate.google.com/#view=home&op=translate&sl=ja&tl=en&text={}'
}
c.url.start_pages = 'https://www.google.com/'
c.fonts.completion.category = 'bold 16pt monospace'
c.fonts.web.size.minimum = 14
c.spellcheck.languages = ['en-US']
config.bind(',n', 'spawn -v nh {url}')
c.auto_save.session = True
c.input.partial_timeout = 10000
c.messages.timeout = 5000
c.tabs.last_close = 'close'
c.tabs.mousewheel_switching = False
c.downloads.position = 'bottom'
c.aliases = { "readability": "spawn --userscript readability" }
c.content.user_stylesheets = ['custom.css']
c.content.ssl_strict = False
c.content.blocking.method = 'adblock'
c.content.blocking.adblock.lists = [
    'https://easylist-downloads.adblockplus.org/easylist.txt',
    'https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt',
    'https://easylist-downloads.adblockplus.org/fanboy-annoyance.txt'
]
c.changelog_after_upgrade = 'patch'
