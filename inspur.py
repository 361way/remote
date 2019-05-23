#!/usr/bin/env python
# coding=utf8
# ===============================================================================
#   Copyright (C) 2019 www.361way.com site All rights reserved.
#   
#   Filename      ：insper.py
#   Author        ：yangbk <itybku@139.com>
#   Create Time   ：2019-05-22 11:33
#   Description   ：
# ===============================================================================
import requests
import re

headers = {
    'User-Agent':'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko/20100101 Firefox/32.0',
    'Content-Type':'application/x-www-form-urlencoded; charset=UTF-8',
    'Accept-Encoding':'gzip,deflate'
      } 
data = {'WEBVAR_USERNAME':'admin','WEBVAR_PASSWORD':'admin'}
r = requests.post('http://200.200.0.7/rpc/WEBSES/create.asp', headers = headers,data = data)


res = re.search('(?P<SessionCookie>[a-zA-Z0-9]{35})',r.text)
session = res.groupdict()
skey = session["SessionCookie"]
ck = 'SessionCookie=' + skey


headers2 = {
    'User-Agent':'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:32.0) Gecko/20100101 Firefox/32.0',
    'Content-Type':'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
    'Accept-Encoding':'gzip,deflate'
      } 

cookies={'SessionCookie': skey}

r2 = requests.get('http://200.200.0.7/Java/jviewer.jnlp?EXTRNIP=200.200.0.7&JNLPSTR=JViewer',headers=headers2,cookies=cookies)

f = open("in.jnlp", "w")
f.write(r2.text)
f.close()
