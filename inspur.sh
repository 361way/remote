#!/bin/bash
# ================================================================
#   Copyright (C) 2019 www.361way.com site All rights reserved.
#   
#   Filename      ：langc.sh
#   Author        ：yangbk <itybku@139.com>
#   Create Time   ：2019-05-22 19:20
#   Description   ：
# ================================================================
mip="200.200.0.7"
jvurl="http://$mip/Java/jviewer.jnlp?EXTRNIP=$mip&JNLPSTR=JViewer"

sessionkey=`curl -sSL http://$mip/rpc/WEBSES/create.asp -d 'WEBVAR_USERNAME=admin&WEBVAR_PASSWORD=admin'|grep SESSION_COOKIE|awk '{print $4}'|awk -F, '{print $1}'`

#curl -sSL -H 'Cookie:"test=1; WebServer=Server: GoAhead-Webs; SessionCookie=shfLO755DJlWGV4AkCjSb4jnkBHPXe3J005; Language=ZH; Username=admin; PNO=4; gMultiLAN=true; settings={eth:[0,1],ethstr:['eth0','eth1'],lan:[1,8],enable:[1,1],features:'JAVASOL,NWBONDING,PAM_REORDERING,SERVICES,FW_IMAGE,SNMP,IMG_REDIRECTION,LMEDIA,NWLINK,PRESERVECONF,IMG_REDIRECTION,RMEDIA,WEB_PREVIEW,WEB_PREVIEW,CIRCULAR_SEL,AUTOVDORECORD,'}"' 'http://200.200.0.7/Java/jviewer.jnlp?EXTRNIP=200.200.0.7&JNLPSTR=JViewer'

#curl -sSL -H 'Cookie:"test=1; WebServer=Server: GoAhead-Webs; SessionCookie=shfLO755DJlWGV4AkCjSb4jnkBHPXe3J005; Language=ZH; Username=admin; PNO=4; gMultiLAN=true;' 'http://200.200.0.7/Java/jviewer.jnlp?EXTRNIP=200.200.0.7&JNLPSTR=JViewer'


#curl -sSL -H 'Cookie:"SessionCookie=shfLO755DJlWGV4AkCjSb4jnkBHPXe3J005; Language=ZH; Username=admin;' 'http://200.200.0.7/Java/jviewer.jnlp?EXTRNIP=200.200.0.7&JNLPSTR=JViewer'


curl -sSL -H 'Cookie:"SessionCookie=shfLO755DJlWGV4AkCjSb4jnkBHPXe3J005;' $jvurl
