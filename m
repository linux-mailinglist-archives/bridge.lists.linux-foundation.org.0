Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0364C4FF52A
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B5AB60A87;
	Wed, 13 Apr 2022 10:52:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQxnLhg7cUgs; Wed, 13 Apr 2022 10:52:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 87A8660B42;
	Wed, 13 Apr 2022 10:52:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39F3EC0088;
	Wed, 13 Apr 2022 10:52:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DAAFCC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7BD760B19
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XTlS4rbFgaJS for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC28B60A87
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:22 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id lc2so3060583ejb.12
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fy4HMSFAQruuiB2fQr8/9r/hM0hn8fOZOU/fMrSAVAk=;
 b=HMhc0RqCMNp+iERi6gQt2FES3O9PbhA7v+3CNcjQ1h84m8lqR0xFbsysI1GCfTkky+
 bKH2pb4SiuYVUGrRaZCDXZ/Qm6sp2Xi9CQGzsqQ6WnuhPPlIlKgqQxe978IFS9Ul/hCV
 wee7cO+JoVmB69sFlFX8sOr50g/oB2+JOKm/SYZ7enyq4bDcDJy4FS9XZGOym2MUx7JG
 AaDXJSXHULd8Vg9ZMxtsPVj46AtUlVSfvBPTPgbZMqXGCJKj68Yreg4iE8QpBqvjC8DD
 TpY0Ki2P0aNRrS0tD1QYYTC+ygk7INuuz1d0csNFDORGfxHF60lLRb9FoKOGiVbZDW4g
 BaKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fy4HMSFAQruuiB2fQr8/9r/hM0hn8fOZOU/fMrSAVAk=;
 b=4Uhb5+AE73//yU79S7htYD0htQ87pJjtad2xhFAtnNojwlKAnUU7Az3f5kC2WZhAha
 O4asEaE4nNU/9+Q1C4Oc9H17Wlvlrjfq0ymN0VOgShG8koil3h9eYHnngmSJhdT28gDc
 ifs+ZBo+bD9thvJSNs+g0Q4wqDg4WfxOF2fKWr9XUL9m9dHkqh9SpwMBfEaqA26lGla2
 ovsEKlVkskKzBJsmm4rOlPTocx6EVGKQDjRpaZiG5Hvsp86k+jMuXX8KhGP9MbM05+z6
 0UpNc3FlZv2eLBBRCycKrT0mpD/SrIpeS8MyesceBjWBnGJAx4b5smV4mQdtRmMs1LmX
 49cQ==
X-Gm-Message-State: AOAM531j31ewAbFcHirafreMTIL82PX8/usW0Zn0+CaPH6v6R+Yf0HDn
 Fw/6o5GuDLZeA47LNa3Nej1CAA==
X-Google-Smtp-Source: ABdhPJyD1QTVUCRrD7tAlrpCuwJZqyJjcoL2vR2M96XGSd77/6IogJGZDy/5+FMvfMNCLfW1EQztVQ==
X-Received: by 2002:a17:907:1b25:b0:6da:8206:fc56 with SMTP id
 mp37-20020a1709071b2500b006da8206fc56mr37383199ejc.81.1649847140696; 
 Wed, 13 Apr 2022 03:52:20 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:20 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:50 +0300
Message-Id: <20220413105202.2616106-1-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 00/12] net: bridge: add flush filtering
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
This patch-set adds support to specify filtering conditions for a bulk
delete (flush) operation. This version uses a new nlmsghdr delete flag
called NLM_F_BULK in combination with a new ndo_fdb_del_bulk op which is
used to signal that the driver supports bulk deletes (that avoids
pushing common mac address checks to ndo_fdb_del implementations and
also has a different prototype and parsed attribute expectations, more
info in patch 03). The new delete flag can be used for any RTM_DEL*
type, implementations just need to be careful with older kernels which
are doing non-strict attribute parses. A new rtnl flag
(RTNL_FLAG_BULK_DEL_SUPPORTED) is used to show that the delete supports
NLM_F_BULK. A proper error is returned if bulk delete is not supported.
For old kernels I use the fact that mac address attribute (lladdr) is
mandatory in the classic fdb del case, but it's not allowed if bulk
deleting so older kernels will error out.

Patch 01 and 02 are minor rtnetlink cleanups to make the code easier to
read. They remove hardcoded values and use names instead. Patch 03 uses
BIT() for rtnl flags.
Patch 04 adds the new NLM_F_BULK delete request modifier, patch 05 adds
the new bulk delete flag and checks for it if the delete requests have
NLM_F_BULK set, it also warns if rtnl register is called with a non-delete
kind and the bulk delete flag is set.
Patch 06 adds the new ndo_fdb_del_bulk call. Patch 07 adds NLM_F_BULK
support to rtnl_fdb_del, on such request strict parsing is used only for
the supported attributes, and if the ndo is implemented it's called, the
NTF_SELF/MASTER rules are the same as for the standard rtnl_fdb_del.
Patch 08 implements bridge-specific minimal ndo_fdb_del_bulk call which
uses the current br_fdb_flush to delete all entries. Patch 09 adds
filtering support to the new bridge flush op which supports target
ifindex (port or bridge), vlan id and flags/state mask. Patch 10 adds
ndm state and flags mask attributes which will be used for filtering.
Patch 11 converts ndm state/flags and their masks to bridge-private flags
and fills them in the filter descriptor for matching. Finally patch 12
fills in the target ifindex (after validating it) and vlan id (already
validated by rtnl_fdb_flush) for matching. Flush filtering is needed
because user-space applications need a quick way to delete only a
specific set of entries, e.g. mlag implementations need a way to flush only
dynamic entries excluding externally learned ones or only externally
learned ones without static entries etc. Also apps usually want to target
only a specific vlan or port/vlan combination. The current 2 flush
operations (per port and bridge-wide) are not extensible and cannot
provide such filtering.

I decided against embedding new attrs into the old flush attributes for
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
$ bridge fdb flush dev ens16 vlan 1 dynamic master
< as above: flush all dynamic entries on port ens16 and vlan 1 >
$ bridge fdb flush dev bridge nooffloaded nopermanent self
< flush all non-offloaded and non-permanent entries >
$ bridge fdb flush dev bridge static noextern_learn
< flush all static entries which are not externally learned >
$ bridge fdb flush dev bridge permanent
< flush all permanent entries >
$ bridge fdb flush dev bridge port bridge permanent
< flush all permanent entries pointing to the bridge itself >

Example of a flush call with unsupported netlink attribute (NDA_DST):
$ bridge fdb flush dev bridge vlan 100 dynamic dst
Error: Unsupported attribute.

Example of a flush call on an older kernel:
$ bridge fdb flush dev bridge dynamic
Error: invalid address.

Example of calling PF_UNSPEC RTM_DELNEIGH which doesn't support bulk delete
with NLM_F_BULK set (ip neigh is changed to add the flag):
$ ip n del 192.168.122.5 lladdr 00:11:22:33:44:55 dev ens3
Error: Bulk delete is not supported.

Note that all flags have their negated version (static vs nostatic etc)
and there are some tricky cases to handle like "static" which in flag
terms means fdbs that have NUD_NOARP but *not* NUD_PERMANENT, so the
mask matches on both but we need only NUD_NOARP to be set. That's
because permanent entries have both set so we can't just match on
NUD_NOARP. Also note that this flush operation doesn't treat permanent
entries in a special way (fdb_delete vs fdb_delete_local), it will
delete them regardless if any port is using them. We can extend the api
with a flag to do that if needed in the future.

Patch-sets (in order):
 - Initial bulk del infra and fdb flush filtering (this set)
 - iproute2 support
 - selftests

v4: Add and check for rtnl del bulk supported flag when using
    NLM_F_BULK (new patch 05), patches 01 - 03 are also new minor cleanups
    to remove use of raw values and make code easier to read, don't
    rename br_fdb_flush in patch 08, set port ifindex as flush target if
    NDA_IFINDEX is missing and flush was called with port netdev and
    NTF_MASTER (patch 12).

v3: Add NLM_F_BULK delete modifier and ndo_fdb_del_bulk callback,
    patches 01 - 03 and 06 are new. Patch 04 is changed to implement
    bulk_del instead of flush, patches 05, 07 and 08 are adjusted to
    use NDA_ attributes

Thanks,
 Nik

Nikolay Aleksandrov (12):
  net: rtnetlink: add msg kind names
  net: rtnetlink: add helper to extract msg type's kind
  net: rtnetlink: use BIT for flag values
  net: netlink: add NLM_F_BULK delete request modifier
  net: rtnetlink: add bulk delete support flag
  net: add ndo_fdb_del_bulk
  net: rtnetlink: add NLM_F_BULK support to rtnl_fdb_del
  net: bridge: fdb: add ndo_fdb_del_bulk
  net: bridge: fdb: add support for fine-grained flushing
  net: rtnetlink: add ndm flags and state mask attributes
  net: bridge: fdb: add support for flush filtering based on ndm flags
    and state
  net: bridge: fdb: add support for flush filtering based on ifindex and
    vlan

 include/linux/netdevice.h      |   9 ++
 include/net/rtnetlink.h        |  16 +++-
 include/uapi/linux/neighbour.h |   2 +
 include/uapi/linux/netlink.h   |   1 +
 net/bridge/br_device.c         |   1 +
 net/bridge/br_fdb.c            | 157 +++++++++++++++++++++++++++++++--
 net/bridge/br_netlink.c        |   9 +-
 net/bridge/br_private.h        |  18 +++-
 net/bridge/br_sysfs_br.c       |   6 +-
 net/core/rtnetlink.c           |  85 +++++++++++++-----
 10 files changed, 269 insertions(+), 35 deletions(-)

-- 
2.35.1

