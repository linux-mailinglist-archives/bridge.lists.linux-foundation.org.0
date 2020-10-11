Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 158F628B157
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E3C186929;
	Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J5BlpyS2jt9h; Mon, 12 Oct 2020 09:23:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A920586945;
	Mon, 12 Oct 2020 09:23:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 880C6C0051;
	Mon, 12 Oct 2020 09:23:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7CD32C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61F9A8709F
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BGpxEFuRzuVd for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:35:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9505687099
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:35:10 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id md26so20278974ejb.10
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=K8aM+wsuH+b5e/V3iFm/UCWXbcrACCoUfMzBFSDIIjs=;
 b=OGKP0cnrBvlbfHqjtgQ++A7bU89/HXGWVwoiLiIwjNoiSWZn7j8YDzKW+WyqhBCQAy
 59ENx6/8OuM1/S9qpbMITd2j1UORS7BdCvX1OtGEE0ZcVyhyvXLJ2mu/OE/oxSrYraP6
 p9KXtbnTRgxqFqRZILQr+TsSa2DiLph2aaBfa7XO1vPzme1evZh9JwhMvyepRPbmIoCS
 xtDQ90Mu1Hbx/oieGYQT1OMM1D8D9lOfAHIVhNc6cABc4PGjM6LP5qKlIcYeMJureXus
 Jv8zEGwRQNqNVjDuqiuDsMjLZOyfuhm5VP4SIGfrkGtOaqNwZ/EK2WBscLO42wbjSSup
 acjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=K8aM+wsuH+b5e/V3iFm/UCWXbcrACCoUfMzBFSDIIjs=;
 b=OuFeRilVLvm1QG/Cia9jOQBjWiADrPs2ad+itnXcV4OUZ4iXWpFtdskBgMnuCi/mmk
 jKA7gcaDCvRejUANqIBW3FPcb1rEuUrFH+nV+OO0KnWKb+hhhgioiRXNr3ANgLyZfCYJ
 4SEM3ZA9yPM9sGJhaWZrSAT8+qafq0xY+mRTTUNXKyqKb6h1ypgiSopANnQCi5NbY5X5
 9Z+8j7PCAY4gs7g4Uhv/GflJR9JO4E49XKA6CplFmpMbg/g+FCj4ZfltHOpT0X3xqU1W
 cCSxHYOMMu8/hjTP8NAR9BC4E1dkGTYsQWCODyGdIoGr7MdEYVhS5hYmot4LXfVrUbJH
 0Y8g==
X-Gm-Message-State: AOAM532wxnpeN8sA4JDOhSGh2xf8NYA2ZikSACFatD1iNAWviAFxU7bE
 72+ThywEl8eoUnH7WI4HGThCysmBxzDHxw==
X-Google-Smtp-Source: ABdhPJzVlyVjU16DJNx2PSPP4M89OX3yHiUWJFeQbTo2OLpXzAvIWhOQ3EiLBn5Q+FtKAFhT6sPXdg==
X-Received: by 2002:a17:906:1a0b:: with SMTP id
 i11mr24887327ejf.472.1602444908702; 
 Sun, 11 Oct 2020 12:35:08 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id w13sm2595839ede.89.2020.10.11.12.35.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:35:08 -0700 (PDT)
From: Heiner Kallweit <hkallweit1@gmail.com>
To: David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>, Oliver Neukum
 <oneukum@suse.com>, Igor Mitsyanko <imitsyanko@quantenna.com>,
 Sergey Matyukevich <geomatsi@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean
 <olteanv@gmail.com>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Johannes Berg <johannes@sipsolutions.net>, Pravin B Shelar
 <pshelar@ovn.org>, Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
Message-ID: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
Date: Sun, 11 Oct 2020 21:34:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 12 Oct 2020 09:23:55 +0000
Cc: linux-rdma@vger.kernel.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next 00/12] net: add and use function
 dev_fetch_sw_netstats for fetching pcpu_sw_netstats
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

In several places the same code is used to populate rtnl_link_stats64
fields with data from pcpu_sw_netstats. Therefore factor out this code
to a new function dev_fetch_sw_netstats().

Heiner Kallweit (12):
  net: core: add function dev_fetch_sw_netstats for fetching
    pcpu_sw_netstats
  IB/hfi1: use new function dev_fetch_sw_netstats
  net: macsec: use new function dev_fetch_sw_netstats
  net: usb: qmi_wwan: use new function dev_fetch_sw_netstats
  net: usbnet: use new function dev_fetch_sw_netstats
  qtnfmac: use new function dev_fetch_sw_netstats
  net: bridge: use new function dev_fetch_sw_netstats
  net: dsa: use new function dev_fetch_sw_netstats
  iptunnel: use new function dev_fetch_sw_netstats
  mac80211: use new function dev_fetch_sw_netstats
  net: openvswitch: use new function dev_fetch_sw_netstats
  xfrm: use new function dev_fetch_sw_netstats

 drivers/infiniband/hw/hfi1/ipoib_main.c       | 34 +-----------------
 drivers/net/macsec.c                          | 25 +------------
 drivers/net/usb/qmi_wwan.c                    | 24 +------------
 drivers/net/usb/usbnet.c                      | 24 +------------
 drivers/net/wireless/quantenna/qtnfmac/core.c | 27 +-------------
 include/linux/netdevice.h                     |  2 ++
 net/bridge/br_device.c                        | 21 +----------
 net/core/dev.c                                | 36 +++++++++++++++++++
 net/dsa/slave.c                               | 21 +----------
 net/ipv4/ip_tunnel_core.c                     | 23 +-----------
 net/mac80211/iface.c                          | 23 +-----------
 net/openvswitch/vport-internal_dev.c          | 20 +----------
 net/xfrm/xfrm_interface.c                     | 22 +-----------
 13 files changed, 49 insertions(+), 253 deletions(-)

-- 
2.28.0

