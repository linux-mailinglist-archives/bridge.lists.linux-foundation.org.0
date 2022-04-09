Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF64A4FA6F1
	for <lists.bridge@lfdr.de>; Sat,  9 Apr 2022 13:04:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C21460F82;
	Sat,  9 Apr 2022 11:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VtpvaDB2ktfd; Sat,  9 Apr 2022 11:04:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1165F60F84;
	Sat,  9 Apr 2022 11:04:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CCA64C0088;
	Sat,  9 Apr 2022 11:04:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4F16CC002C
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 287D960F81
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t2HdMxgZuSY9 for <bridge@lists.linux-foundation.org>;
 Sat,  9 Apr 2022 11:04:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2134260E1E
 for <bridge@lists.linux-foundation.org>; Sat,  9 Apr 2022 11:04:50 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id d10so12755696edj.0
 for <bridge@lists.linux-foundation.org>; Sat, 09 Apr 2022 04:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9IipWlcL21uLDKcWxlDWy0bD+PCM4ppsm473BRxELzQ=;
 b=yVm732pr+7Rc8HCzyPkFvK7KZmPJ9hjLwHH19jaclrFSfiUUCB+E7P9YfaiFCKwO1Q
 oUoi5p0ej5eZ25mnWbSuhS5Wlklhe3KlCKQNwqnaYbuYLGv8D3d6mFSwQIIdyE64ED66
 LNd01CyigRgXJiiuiZWERLH4fpEYCklvhf1IZUEKMekoZD7hymWsd2s7EQHnMUQgU7qS
 lGg69Li7f/EHw8Qr9YhrpxpFtm5BrPdiexLKVUjlv/rialKDydRono5upsrRWznsvLG8
 7xyf7Se8JrS/lMa+KBuMq10Au9dlQ4q/gBIMsl0/SryTZwRZxcFDFoW7FKWp1TebXX3i
 mvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9IipWlcL21uLDKcWxlDWy0bD+PCM4ppsm473BRxELzQ=;
 b=VKuC2ODYCPqckEsttJ2CVN81ozaPnRqi6q4JqYyqFC3U3Hc0gdYLxVVVo1TZa2Oow0
 cizgxU7B/9kb+qIP2rfQltEGbmL4w4uzsnfsrG54dEa1M247ek8UkIsZljAP630iFRes
 ANl6jQrA+ISw/2mP19EERgUmJTw5Im0MbIAbvX1/NiJloxiV/raQkLSvV3NeixrWJaRf
 2CadtWXW9W2L2KKEj/kvu7Ex4WpxhGVOSSykX5jZ7RSyvt3/HJVKtYCnAaEG5vi3v33k
 thA4P190ccDOzrVTvWBb0i/G7GHMGeEe/rdOcgD2a7U27PJk7qHCQO54J7JZwmjTdeN+
 pbfw==
X-Gm-Message-State: AOAM5306/y4cS1UiVUSUt6dOnJdaABQBklSap2g54yckx3ysDz8jLWD6
 N+Dyq5nO4eQTKOedWRhl56dL5A==
X-Google-Smtp-Source: ABdhPJxOwMDpQ4YHJfYKRsSvU2ldqF9FFsS/dbI/M4lQglQa083pyMLFZp/2LHtu9Ojn04lkeR2Srg==
X-Received: by 2002:a05:6402:2707:b0:419:5b7d:fd21 with SMTP id
 y7-20020a056402270700b004195b7dfd21mr23710656edd.51.1649502289095; 
 Sat, 09 Apr 2022 04:04:49 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 r11-20020a1709064d0b00b006e87938318dsm179574eju.39.2022.04.09.04.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 04:04:48 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sat,  9 Apr 2022 13:58:51 +0300
Message-Id: <20220409105857.803667-1-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 0/6] net: bridge: add flush filtering
	support
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

Hi,
This patch-set adds support to specify filtering conditions for a flush
operation. Initially only FDB flush filtering is added, later MDB
support will be added as well. Some user-space applications need a way
to delete only a specific set of entries, e.g. mlag implementations need
a way to flush only dynamic entries excluding externally learned ones
or only externally learned ones without static entries etc. Also apps
usually want to target only a specific vlan or port/vlan combination.
The current 2 flush operations (per port and bridge-wide) are not
extensible and cannot provide such filtering, so a new bridge af
attribute is added (IFLA_BRIDGE_FLUSH) which contains the filtering
information for each object type which has to be flushed.
An example structure for fdbs:
     [ IFLA_BRIDGE_FLUSH ]
      `[ BRIDGE_FDB_FLUSH ]
        `[ FDB_FLUSH_NDM_STATE ]
        `[ FDB_FLUSH_NDM_FLAGS ]

I decided against embedding these into the old flush attributes for
multiple reasons - proper error handling on unsupported attributes,
older kernels silently flushing all, need for a second mechanism to
signal that the attribute should be parsed (e.g. using boolopts),
special treatment for permanent entries.

Examples:
$ bridge fdb flush dev bridge vlan 100 static
< flush all static entries on vlan 100 >
$ bridge fdb flush dev bridge vlan 1 dynamic
< flush all dynamic entries on vlan 1 >
$ bridge fdb flush dev bridge port ens16 vlan 1 dynamic
< flush all dynamic entries on port ens16 and vlan 1 >
$ bridge fdb flush dev bridge nooffloaded nopermanent
< flush all non-offloaded and non-permanent entries >
$ bridge fdb flush dev bridge static noextern_learn
< flush all static entries which are not externally learned >
$ bridge fdb flush dev bridge permanent
< flush all permanent entries >

Note that all flags have their negated version (static vs nostatic etc)
and there are some tricky cases to handle like "static" which in flag
terms means fdbs that have NUD_NOARP but *not* NUD_PERMANENT, so the
mask matches on both but we need only NUD_NOARP to be set. That's
because permanent entries have both set so we can't just match on
NUD_NOARP. Also note that this flush operation doesn't treat permanent
entries in a special way (fdb_delete vs fdb_delete_local), it will
delete them regardless if any port is using them. We can extend the api
with a flag to do that if needed in the future.

Patches in this set:
 1. adds the new IFLA_BRIDGE_FLUSH bridge af attribute
 2. adds a basic structure to describe an fdb flush filter
 3. adds fdb netlink flush call via BRIDGE_FDB_FLUSH attribute
 4 - 6. add support for specifying various fdb fields to filter

Patch-sets (in order):
 - Initial flush infra and fdb flush filtering (this set)
 - iproute2 support
 - selftests

Future work:
 - mdb flush support

Thanks,
 Nik

Nikolay Aleksandrov (6):
  net: bridge: add a generic flush operation
  net: bridge: fdb: add support for fine-grained flushing
  net: bridge: fdb: add new nl attribute-based flush call
  net: bridge: fdb: add support for flush filtering based on ndm flags
    and state
  net: bridge: fdb: add support for flush filtering based on ifindex
  net: bridge: fdb: add support for flush filtering based on vlan id

 include/uapi/linux/if_bridge.h |  22 ++++++
 net/bridge/br_fdb.c            | 128 +++++++++++++++++++++++++++++++--
 net/bridge/br_netlink.c        |  59 ++++++++++++++-
 net/bridge/br_private.h        |  12 +++-
 net/bridge/br_sysfs_br.c       |   6 +-
 5 files changed, 215 insertions(+), 12 deletions(-)

-- 
2.35.1

