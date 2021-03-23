# Feed Search Syntax

These are python programs so you need `pip3` to install them and `python3` to run them.

I was running these in the python shell, but it gave me too much trouble so i finally put it together into an actual python script :rofl:

## Feedsearch Crawler

https://github.com/DBeath/feedsearch-crawler

### Crawl a single site

```py
from feedsearch_crawler import search
feeds = search('https://www.weboftrust.info/')
feeds
```

### Crawl multiple sites

```py
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

```py
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

## `feedsearch.py`

```py
from feed_seeker import generate_feed_urls
## https://github.com/mitmedialab/feed_seeker

import sys
from feedsearch_crawler import search
## https://github.com/DBeath/feedsearch-crawler

args = sys.argv
args.pop(0)

for arg in args:
    print(arg)
    for url in generate_feed_urls(arg):
        print(url)
    for feed in search(arg):
        print(feed)
```
