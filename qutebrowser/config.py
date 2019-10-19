c.content.notifications = False
c.editor.command = ['st', 'nvim', '{file}']
c.scrolling.bar = 'always'
c.content.register_protocol_handler = False
c.url.default_page = 'https://www.google.com/'
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}'}
c.url.start_pages = 'https://www.google.com/'
c.fonts.completion.category = 'bold 16pt monospace'
c.fonts.web.size.minimum = 14
config.bind(',n', 'spawn -v nh {url}')
c.auto_save.session = True
c.input.partial_timeout = 10000
c.messages.timeout = 5000
c.tabs.background = True
c.tabs.last_close = 'close'
c.tabs.mousewheel_switching = False
c.downloads.position = 'bottom'
c.aliases = { "readability": "spawn --userscript readability" }
