Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 827514FEA31
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 00:50:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5455260E41;
	Tue, 12 Apr 2022 22:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ULUqkN7hcIxQ; Tue, 12 Apr 2022 22:50:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A51FD60EE6;
	Tue, 12 Apr 2022 22:50:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4984AC0088;
	Tue, 12 Apr 2022 22:50:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2A9E6C002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 22:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1214260EE6
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 22:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eQbLs3ztJ6M for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 22:50:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 12FA260E41
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 22:50:24 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id c64so238509edf.11
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 15:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=lJSCG989IX4QC3GOGLcxeSzWZFhCu/OG7M7lNsHkGa0=;
 b=sSc19nPWxqzX3SK0Wgcczl3S8pfZAXwZXb2ie5cYLqFqXm0DKjWMEnzs5QwQ7bmmT/
 lHgt71HtETNi5od5iWTY2n5rB9/UM2EeG7awkLCq8ytrXUxxkEOMdJ9e5qPvZQSChdoV
 z1bXj0IkjgEwbWK/KRnXo00xHOStw7+JyJXj9UkGx/G0IVbJto3Zn8XhL3QRiTXgIzZJ
 rvrba3+OC1Dh1Ad/dfVUNuV2vD3lfYfcUpjumAiKnz3bJpLEE1hXRo/MHpgcYpkXV25V
 4s9DpryVN3mZuxwI/BbJxS3GrilXbGE6rHeLnGRVcQFdMgxhQyf5pY7dMGRp3vifOjg/
 MKIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=lJSCG989IX4QC3GOGLcxeSzWZFhCu/OG7M7lNsHkGa0=;
 b=bDrtftMnIiw+EBTp4WH6/ZwVZbLvsPKVWN1GyBxzfw6dNi/x1j3SIS35U+vCXfet3B
 bD073oVZee4ixBhQZ6eLL5dFjy8D5zkAmCZX5SWSKi9TmMuzOM22AYrJDzASzumpxvcl
 fpcx6UoFgJfdNRkJXHFw/dQkDn5zmrn7t9HZpLpgMga+iFC/wbhnLD6/ZJL9UZH6nJZV
 XYfD9f7s3kOvmi3GUpd2ZREHK75QfLGtLEV/J0YZX60m3U02cjffrpASW40WjSLLHwwb
 LJaf2mQuXtidYU8nFIwhWKG5MQwwCqTO7cjVwRngmwhwgSaNlwGdrR/pKYiEqgTElt7x
 u6BQ==
X-Gm-Message-State: AOAM5319C49oD4AQqdqHdeg/Fg+F65YBZLmJbjRc/s9H4z/DjTSgyWwy
 4xGWoSiHI0dETPu4qYQKCd5f6g==
X-Google-Smtp-Source: ABdhPJyoVemwMig09/lDYScG0NeTcsRM/zXd8Z+d2jDNsV/s5riHhmyB5IkbXQnQ+KMxnwZEe1qGPg==
X-Received: by 2002:a05:6402:51d2:b0:41c:e157:84f1 with SMTP id
 r18-20020a05640251d200b0041ce15784f1mr41415467edd.135.1649803823121; 
 Tue, 12 Apr 2022 15:50:23 -0700 (PDT)
Received: from [192.168.0.117] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 h8-20020a1709066d8800b006e09a49a713sm13726245ejt.159.2022.04.12.15.50.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 15:50:22 -0700 (PDT)
Message-ID: <44d0550f-35c0-e9af-4725-1803725f9a46@blackwall.org>
Date: Wed, 13 Apr 2022 01:50:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: netdev@vger.kernel.org
References: <20220412132245.2148794-1-razor@blackwall.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: dsahern@kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 0/8] net: bridge: add flush
	filtering support
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

On 4/12/22 16:22, Nikolay Aleksandrov wrote:
> Hi,
> This patch-set adds support to specify filtering conditions for a bulk
> delete (flush) operation. This version uses a new nlmsghdr delete flag
> called NLM_F_BULK in combination with a new ndo_fdb_del_bulk op which is
> used to signal that the driver supports bulk deletes (that avoids
> pushing common mac address checks to ndo_fdb_del implementations and
> also has a different prototype and parsed attribute expectations, more
> info in patch 03). The new delete flag can be used for any RTM_DEL*
> type, implementations just need to be careful with older kernels which
> are doing non-strict attribute parses. Here I use the fact that mac
> address attribute (lladdr) is mandatory in the classic fdb del case, but
> it's not allowed if bulk deleting so older kernels will error out.
> Patch 01 adds the new NLM_F_BULK delete request modifier, patch 02 then
> adds the new ndo_fdb_del_bulk call. Patch 03 adds NLM_F_BULK support to
> rtnl_fdb_del, on such request strict parsing is used only for the
> supported attributes, and if the ndo is implemented it's called, the
> NTF_SELF/MASTER rules are the same as for the standard rtnl_fdb_del.
> Patch 04 implements bridge-specific minimal ndo_fdb_del_bulk call which
> uses the current br_fdb_flush to delete all entries. Patch 05 adds
> filtering support to the new bridge flush op which supports target
> ifindex (port or bridge), vlan id and flags/state mask. Patch 06 adds
> ndm state and flags mask attributes which will be used for filtering.
> Patch 07 converts ndm state/flags and their masks to bridge-private flags
> and fills them in the filter descriptor for matching. Finally patch 08
> fills in the target ifindex (after validating it) and vlan id (already
> validated by rtnl_fdb_flush) for matching. Flush filtering is needed
> because user-space applications need a quick way to delete only a
> specific set of entries, e.g. mlag implementations need a way to flush only
> dynamic entries excluding externally learned ones or only externally
> learned ones without static entries etc. Also apps usually want to target
> only a specific vlan or port/vlan combination. The current 2 flush
> operations (per port and bridge-wide) are not extensible and cannot
> provide such filtering.
> 
> I decided against embedding new attrs into the old flush attributes for
> multiple reasons - proper error handling on unsupported attributes,
> older kernels silently flushing all, need for a second mechanism to
> signal that the attribute should be parsed (e.g. using boolopts),
> special treatment for permanent entries.
> 
> Examples:
> $ bridge fdb flush dev bridge vlan 100 static
> < flush all static entries on vlan 100 >
> $ bridge fdb flush dev bridge vlan 1 dynamic
> < flush all dynamic entries on vlan 1 >
> $ bridge fdb flush dev bridge port ens16 vlan 1 dynamic
> < flush all dynamic entries on port ens16 and vlan 1 >
> $ bridge fdb flush dev ens16 vlan 1 dynamic master
> < as above: flush all dynamic entries on port ens16 and vlan 1 >
> $ bridge fdb flush dev bridge nooffloaded nopermanent self
> < flush all non-offloaded and non-permanent entries >
> $ bridge fdb flush dev bridge static noextern_learn
> < flush all static entries which are not externally learned >
> $ bridge fdb flush dev bridge permanent
> < flush all permanent entries >
> $ bridge fdb flush dev bridge port bridge permanent
> < flush all permanent entries pointing to the bridge itself >
> 
> Example of a flush call with unsupported netlink attribute (NDA_DST):
> $ bridge fdb flush dev bridge vlan 100 dynamic dst
> Error: Unsupported attribute.
> 
> Example of a flush call on an older kernel:
> $ bridge fdb flush dev bridge dynamic
> Error: invalid address.
> 
> Note that all flags have their negated version (static vs nostatic etc)
> and there are some tricky cases to handle like "static" which in flag
> terms means fdbs that have NUD_NOARP but *not* NUD_PERMANENT, so the
> mask matches on both but we need only NUD_NOARP to be set. That's
> because permanent entries have both set so we can't just match on
> NUD_NOARP. Also note that this flush operation doesn't treat permanent
> entries in a special way (fdb_delete vs fdb_delete_local), it will
> delete them regardless if any port is using them. We can extend the api
> with a flag to do that if needed in the future.
> 
> Patch-sets (in order):
>   - Initial flush infra and fdb flush filtering (this set)
>   - iproute2 support
>   - selftests
> 
> Future work:
>   - mdb flush support (RTM_FLUSHMDB type)
> 
> Thanks to Ido for the great discussion and feedback while working on this.
> 
> v3: Add NLM_F_BULK delete modifier and ndo_fdb_del_bulk callback,
>      patches 01 - 03 and 06 are new. Patch 04 is changed to implement
>      bulk_del instead of flush, patches 05, 07 and 08 are adjusted to
>      use NDA_ attributes
> 
> Thanks,
>   Nik
> 
> Nikolay Aleksandrov (8):
>    net: netlink: add NLM_F_BULK delete request modifier
>    net: add ndo_fdb_del_bulk
>    net: rtnetlink: add NLM_F_BULK support to rtnl_fdb_del
>    net: bridge: fdb: add ndo_fdb_del_bulk
>    net: bridge: fdb: add support for fine-grained flushing
>    net: rtnetlink: add ndm flags and state mask attributes
>    net: bridge: fdb: add support for flush filtering based on ndm flags
>      and state
>    net: bridge: fdb: add support for flush filtering based on ifindex and
>      vlan
> 
>   include/linux/netdevice.h      |   9 ++
>   include/uapi/linux/neighbour.h |   2 +
>   include/uapi/linux/netlink.h   |   1 +
>   net/bridge/br_device.c         |   1 +
>   net/bridge/br_fdb.c            | 154 +++++++++++++++++++++++++++++++--
>   net/bridge/br_netlink.c        |   9 +-
>   net/bridge/br_private.h        |  19 +++-
>   net/bridge/br_sysfs_br.c       |   6 +-
>   net/core/rtnetlink.c           |  66 ++++++++++----
>   9 files changed, 238 insertions(+), 29 deletions(-)
> 

I realized an improvement I've missed to do in patch 08 (use port's 
ifindex when doing a bridge flush through a port and NDA_IFINDEX is not 
specified), I'll leave this set for comments and will prepare v4 with it 
and anything else that comes up in the meantime.

Thanks,
  Nik


