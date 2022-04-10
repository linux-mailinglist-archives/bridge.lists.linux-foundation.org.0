Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E034FB037
	for <lists.bridge@lfdr.de>; Sun, 10 Apr 2022 22:43:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EB06606E6;
	Sun, 10 Apr 2022 20:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gUIUzPHT0B3k; Sun, 10 Apr 2022 20:43:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C4440605EE;
	Sun, 10 Apr 2022 20:43:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 78592C0088;
	Sun, 10 Apr 2022 20:43:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2FF23C002C
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 20:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F398A60B15
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 20:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S4Gm_IWY5XCo for <bridge@lists.linux-foundation.org>;
 Sun, 10 Apr 2022 20:43:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DBE6360AC4
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 20:43:23 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id t11so133537eju.13
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 13:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=OidQIHbEm/hM6OAnbFcQVbU0BPrg1Seqw7Y933k7iHk=;
 b=e4W65seRjaLegmIk/OvxytHviWAisj66NFs6XfVQG39KqoNOSUhXlTq6b1hnm6rgLW
 idJSXoORhzZ8Y4jYPaLZM94QqaWYf0TNcrD/kk4tS6xP4HlcEtT/w75CoW79Td6IhTcM
 W1lnAcMAwstXURXMMUkr+iX52kD8vm4aXHK5Z3Ob5dAd53zq/PVS8lIKC/gJ+nCzJXGm
 CNoRRhPANDOauAPJ+IQFm9Yh65OC5atrbj3uxvxIpsVrsf6GM6Nndop/T2c5Md9vRLHg
 rRSIx3U9rpH/NkCd83LujQtiPhUJt3LVOkyfIeZDuwQb2+/+wNIFeFCDSTx9PV84ca2s
 RIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=OidQIHbEm/hM6OAnbFcQVbU0BPrg1Seqw7Y933k7iHk=;
 b=vFd1t0RkUeWAqpgj8E1TimjSKFNz2fnkzydunHsoUPfIRAeLBNtWiwbD0jlz/zux4x
 k7LoAk3DNZ2adkS/XqXfbC2nvCKCN/wQPF3JHrukY3H6HiB7SAcG8fEqwg+qFKS+lsJs
 q7SVM/gtysd4+AZ5agGFZlEMkrQAJniSPEAyn5LAFFWBu+zsB4Yp477kPEiLArS0OM2O
 a3qSpNt5UTsvi7mOJwBIy2GAbcEuNxWmomA/K1eE9NGfQRjkcDBOeUdgtHBMzffIWWCW
 fXn6RduU2rHg1aXxKH6QMHlF1t+IxF6V6AQDQhfHCxQicf2G7GL5+3P/BSs6WoSWQ14d
 duiA==
X-Gm-Message-State: AOAM532DKzI926Q+Hsff8QRBIbxIMhRfV4OWfRNKDgRpYvFwamF7mUge
 e4sUPcgf6+YVpb7A8jB8M8LIXw==
X-Google-Smtp-Source: ABdhPJzM/vTuIOL3y47aOYAclLGpMU4sYPQTLdWIWN/M9l68vr5/jPDSo2tJ3RjDOtBicwhGpoI5VA==
X-Received: by 2002:a17:907:da7:b0:6df:9ff4:10c7 with SMTP id
 go39-20020a1709070da700b006df9ff410c7mr26771655ejc.106.1649623401832; 
 Sun, 10 Apr 2022 13:43:21 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 p24-20020a056402045800b0041614c8f79asm13712479edw.88.2022.04.10.13.43.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Apr 2022 13:43:21 -0700 (PDT)
Message-ID: <b38a740f-fadb-bd2e-38d2-3683ddce69eb@blackwall.org>
Date: Sun, 10 Apr 2022 23:43:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: netdev@vger.kernel.org
References: <20220409105857.803667-1-razor@blackwall.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220409105857.803667-1-razor@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@idosch.org>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 0/6] net: bridge: add flush filtering
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

On 09/04/2022 13:58, Nikolay Aleksandrov wrote:
> Hi,
> This patch-set adds support to specify filtering conditions for a flush
> operation. Initially only FDB flush filtering is added, later MDB
> support will be added as well. Some user-space applications need a way
> to delete only a specific set of entries, e.g. mlag implementations need
> a way to flush only dynamic entries excluding externally learned ones
> or only externally learned ones without static entries etc. Also apps
> usually want to target only a specific vlan or port/vlan combination.
> The current 2 flush operations (per port and bridge-wide) are not
> extensible and cannot provide such filtering, so a new bridge af
> attribute is added (IFLA_BRIDGE_FLUSH) which contains the filtering
> information for each object type which has to be flushed.
> An example structure for fdbs:
>      [ IFLA_BRIDGE_FLUSH ]
>       `[ BRIDGE_FDB_FLUSH ]
>         `[ FDB_FLUSH_NDM_STATE ]
>         `[ FDB_FLUSH_NDM_FLAGS ]
> 
[snip]
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
> Patches in this set:
>  1. adds the new IFLA_BRIDGE_FLUSH bridge af attribute
>  2. adds a basic structure to describe an fdb flush filter
>  3. adds fdb netlink flush call via BRIDGE_FDB_FLUSH attribute
>  4 - 6. add support for specifying various fdb fields to filter
> 
> Patch-sets (in order):
>  - Initial flush infra and fdb flush filtering (this set)
>  - iproute2 support
>  - selftests
> 
> Future work:
>  - mdb flush support
> 
> Thanks,
>  Nik
> 
> Nikolay Aleksandrov (6):
>   net: bridge: add a generic flush operation
>   net: bridge: fdb: add support for fine-grained flushing
>   net: bridge: fdb: add new nl attribute-based flush call
>   net: bridge: fdb: add support for flush filtering based on ndm flags
>     and state
>   net: bridge: fdb: add support for flush filtering based on ifindex
>   net: bridge: fdb: add support for flush filtering based on vlan id
> 
>  include/uapi/linux/if_bridge.h |  22 ++++++
>  net/bridge/br_fdb.c            | 128 +++++++++++++++++++++++++++++++--
>  net/bridge/br_netlink.c        |  59 ++++++++++++++-
>  net/bridge/br_private.h        |  12 +++-
>  net/bridge/br_sysfs_br.c       |   6 +-
>  5 files changed, 215 insertions(+), 12 deletions(-)
> 

Just FYI I plan to send v2 tomorrow with a few cleanups suggested by Ido.
Please don't apply this one, I'll wait for more feedback and will resubmit.

Thanks,
 Nik
