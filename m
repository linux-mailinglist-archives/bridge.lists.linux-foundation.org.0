Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA45428B169
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F414186101;
	Mon, 12 Oct 2020 09:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gDkypRc3bzlL; Mon, 12 Oct 2020 09:24:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C3E286008;
	Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 68E6DC1AD5;
	Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D7F2DC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C5EF685F53
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GWuQeplldYBJ for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:00:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD5E485F33
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:00:23 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id lw21so21902736ejb.6
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=E6ZQVUiO2275Bcug8uUrW3WsykSr+byogH0GbMVRigw=;
 b=GcDfopve+WPhIRwCJrdYk1/TfRko9i65Ilpv8HZL+ED4dQxCulnQnRZePaC64NPAr2
 nmn49sDr6c5oTxnoaD2uTYlCVwQO8ZXYpcby1pF1D2C+klxUKxBdYIrvBNyVr+GmiuG8
 2bxGIzY8Kxom/n/9bHVET77PZ+zY76sAt0wT5b3JoLdHxzTW8+7RWqIDuoC4DkIKWI6m
 7HiNZNlq7bhlUSEqBASqo+IrjOTSLh2e3kzN+VzkPV5G32LDlCJJtFw4Om97uHa2w1yJ
 VkNWhQdsIVRQDbB1ucSjpnk/Fp3cj2MWiyRP9+YPlG7kqDkXi/dXv8baEtjIGqojK2hg
 0+vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=E6ZQVUiO2275Bcug8uUrW3WsykSr+byogH0GbMVRigw=;
 b=s9eap4i4Qr7GnezkdPk0eojTxgV4fAhGk16QpUsi11M/MeTejMlR7Cx5nEfNHm7wO8
 NWU+lwwTCHYVf1P7raQKiHvNDGXGNH4ch1NhsD9+m+9AFjHH7HVwSOG+6AmaQ5CLfK5o
 EhBFIf7CO4N+tbkhW3pyi9UthOrfQx7wEtjgYuGvq5e+LT7sXDwNAhjywA0xfGCK5lEe
 /bnrQUmv31xhjLpJq1XRAL/a5uF2aP5+J+Gsjn0ExzteGLCdW9oF/Ti6JiX0ccK/FkAf
 4z+YseJJ6E1WWFG7jXAQnfPn1oVhjNhoIHyTs+Itun+LZbpuq7+WKrtVoLAeZ8jjPGFQ
 BZjw==
X-Gm-Message-State: AOAM531tyAdXblYQwMhSeNctmNfHkg+/sVtAJOsFU9Sb/g9WkOMZzxbw
 tbFsfH2kHMC+atUQqAOZwzXpqe8tRJO9vQ==
X-Google-Smtp-Source: ABdhPJyM1WPUyaOroCzCzAQo+bFOg9gN1cdZ7Fu41hYLugilC37gIB+LcI36H/p0IumpMavqB/LCXw==
X-Received: by 2002:a17:907:4365:: with SMTP id
 nd5mr27607240ejb.56.1602489621917; 
 Mon, 12 Oct 2020 01:00:21 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id r21sm10129690eda.3.2020.10.12.01.00.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:00:21 -0700 (PDT)
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
Message-ID: <d77b65de-1793-f808-66b5-aaa4e7c8a8f0@gmail.com>
Date: Mon, 12 Oct 2020 10:00:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 12 Oct 2020 09:23:56 +0000
Cc: linux-rdma@vger.kernel.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v2 00/12] net: add and use function
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

v2:
- constify argument netstats
- don't ignore netstats being NULL or an ERRPTR
- switch to EXPORT_SYMBOL_GPL

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

 drivers/infiniband/hw/hfi1/ipoib_main.c       | 34 +------------------
 drivers/net/macsec.c                          | 22 +-----------
 drivers/net/usb/qmi_wwan.c                    | 24 +------------
 drivers/net/usb/usbnet.c                      | 24 +------------
 drivers/net/wireless/quantenna/qtnfmac/core.c | 27 +--------------
 include/linux/netdevice.h                     |  2 ++
 net/bridge/br_device.c                        | 21 +-----------
 net/core/dev.c                                | 34 +++++++++++++++++++
 net/dsa/slave.c                               | 21 +-----------
 net/ipv4/ip_tunnel_core.c                     | 23 +------------
 net/mac80211/iface.c                          | 23 +------------
 net/openvswitch/vport-internal_dev.c          | 20 +----------
 net/xfrm/xfrm_interface.c                     | 22 +-----------
 13 files changed, 47 insertions(+), 250 deletions(-)

-- 
2.28.0



