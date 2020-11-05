# Feed Search Syntax

These are python programs so you need `pip3` to install them and `python3` to run them.

They don't give you a binary but you have to run them in the python shell... I made these examples so I can remember, and extend the documentation of those apps.

I chose feedsearch crawler because it will output opml complete with title description, etc... 

## Feedsearch Crawler

https://github.com/DBeath/feedsearch-crawler

### Crawl a single site

```
from feedsearch_crawler import search
feeds = search('https://www.weboftrust.info/')
feeds
```

### Crawl multiple sites

```
from feedsearch_crawler import search
import logging
logging.basicConfig(filename='example.log',level=logging.DEBUG)
from feedsearch_crawler import output_opml
list = ["https://mattr.global/","https://learn.mattr.global"]
for items in list:
    feeds = search(items)
    output_opml(feeds).decode()
    logger = logging.getLogger("feedsearch_crawler")
```

## Feed seeker 


### Find URLS
https://github.com/mitmedialab/feed_seeker

```
from feed_seeker import generate_feed_urls
list = ["http://mattr.global/","http://learn.mattr.global/"]
for items in list:
    for url in generate_feed_urls(items):
        print(url)
```

### Find single url
```
from feed_seeker import find_feed_url

find_feed_url('https://www.weboftrust.info/')
```
