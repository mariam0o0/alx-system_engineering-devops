#!/usr/bin/python3
"""Queries the Reddit API and returns the number of subscribers"""

import requests

def number_of_subscribers(subreddit):
    """Function that queries the Reddit API"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {"User-Agent": "Custom"}
    
    try:
        req = requests.get(url, headers=headers, allow_redirects=False)
        
        if req.status_code == 200:
            data = req.json().get("data", {})
            return data.get("subscribers", 0)
        else:
            return 0
    except Exception as e:
        return 0
