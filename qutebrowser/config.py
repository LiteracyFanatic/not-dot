config.load_autoconfig(False)
c.content.notifications.enabled = False
c.editor.command = ['xfce4-terminal', '-x', 'nvim', '{file}']
c.scrolling.bar = 'always'
c.content.register_protocol_handler = False
c.url.default_page = 'https://www.google.com/'
c.url.searchengines = {
    'DEFAULT': 'https://google.com/search?q={}',
    'i': 'https://google.com/search?tbm=isch&q={}',
    'm': 'https://mangadex.org/titles?q={}',
    'j': 'https://jisho.org/search/{}',
    't': 'https://translate.google.com/#view=home&op=translate&sl=ja&tl=en&text={}'
}
c.url.start_pages = 'https://www.google.com/'
c.fonts.completion.category = 'bold 16pt monospace'
c.fonts.web.size.minimum = 14
c.spellcheck.languages = ['en-US']
config.bind(',n', 'spawn -v nh {url}')
config.bind(',p', 'spawn --userscript qute-bitwarden')
config.bind('D', 'tab-close;; tab-prev')
config.bind('b', 'set-cmd-text --space :tab-select')
config.bind('<Alt+left>', 'tab-focus stack-prev')
config.bind('<Alt+right>', 'tab-focus stack-next')
config.bind('s', 'jseval --file --quiet netflix-subtitle-toggle.js')
config.bind('<Ctrl+l>', 'clear-messages')
config.bind('<', 'tab-move -')
config.bind('>', 'tab-move +')
config.bind('p', 'open -- {clipboard}')
config.bind('P', 'open -t -- {clipboard}')
c.auto_save.session = True
c.input.partial_timeout = 10000
c.messages.timeout = 5000
c.tabs.last_close = 'close'
c.tabs.mousewheel_switching = False
c.tabs.mode_on_change = 'restore'
c.downloads.position = 'bottom'
c.aliases = { "readability": "spawn --userscript readability" }
c.session.lazy_restore = True
c.content.user_stylesheets = ['custom.css']
c.content.tls.certificate_errors = 'ask-block-thirdparty'
c.content.blocking.method = 'adblock'
c.content.blocking.adblock.lists = [
    'https://easylist-downloads.adblockplus.org/easylist.txt',
    'https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt',
    'https://adblockplus.org/en/subscriptions'
]
c.changelog_after_upgrade = 'patch'
c.qt.force_software_rendering = 'qt-quick'
c.tabs.indicator.width = 0
