Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519A767FDE6
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 10:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50BFC400EC;
	Sun, 29 Jan 2023 09:40:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50BFC400EC
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=k2XO9gHm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yichla2JUf2a; Sun, 29 Jan 2023 09:40:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CF4D74015A;
	Sun, 29 Jan 2023 09:40:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF4D74015A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 633B0C007C;
	Sun, 29 Jan 2023 09:40:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 44693C002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B33B81A1C
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:40:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B33B81A1C
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=k2XO9gHm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B_w7IBaEWI3P for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 09:40:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E68181975
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E68181975
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 09:40:53 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id hx15so4673311ejc.11
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 01:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eddf/OwrN8syk9SCGChlswO63H1xILMxSP4jGfFBdTU=;
 b=k2XO9gHmWZEtvHEcfqAHyteQULMTseCOzFrDVkM2O8JH5utOTj6auuhblgX2LU4+Hl
 w+5FYPcwaxvBfeUx3pfPyUQc+PxZisXva8dEZQ95KY3fLirIbKgE+4FUz4lrSGIkKwXy
 uXWEJ1U0WB5QKlBO8yCT2ra0G2I1JCi0qHm8feObzovgUUDvcXhBs7KAzZGzKIXY8wER
 DUxdgri1f9nxpyjky16TtAiu6kYDSgqZP73r8ReY6cZq5urblcua6x67t5AzO6SoQso2
 5kKa9Vs6S84HDJEh06W1wjVgpudQqfGfe56zU0iNC7xzfx58n+C3d1SjJWCjbetcneEY
 n45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eddf/OwrN8syk9SCGChlswO63H1xILMxSP4jGfFBdTU=;
 b=1q9TIgbjbEhVNxjLUwmuy5IFLpEalKpbhb8yvvCmAkggEs4bF24V3RvLtfeTz4jON3
 j/MlNbqlr0iQPA5EMuJ7ZGtZmNX8xguNsW+8Rf8AtwjBjx/JXgHn+Ka8EBO3Xoartpfi
 9CO0d5hKc+klwAubvosuO40Wim6XZ2n9PXaKnQc0NFUbqnbCxa1tJv7LESXSWeErahkz
 KsVdgR8mcemGXsjaoKeabUDS4qq7TP7Hzorn+LQhAeqx4iqDzZnMLUsfY/q+LFfJ7fid
 dpJzKGR0JX+vnO7iiW5hiVx1rmiS64+Jj/JIbpe5lgRXaigo+Zzgrw8t9je7J9eQJ6Jh
 6OYA==
X-Gm-Message-State: AFqh2kq9WMUgm8ov7Xyjor8YViEgfyPU2/jlrneVFM8yvRJhrqrS12WC
 JWl3+eD8oU05Az6k4vFIkNksUQ==
X-Google-Smtp-Source: AMrXdXsBVgYMsgJQOriYF103odV/kWrthgNsPt4JKWebeUgn6xwBThNMMVlk1Ibbq4PNWDipGc5tdg==
X-Received: by 2002:a17:907:88c4:b0:86d:d041:b8aa with SMTP id
 rq4-20020a17090788c400b0086dd041b8aamr50189727ejc.27.1674985251084; 
 Sun, 29 Jan 2023 01:40:51 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 ac7-20020a170907344700b00881c40ceffasm2321547ejc.112.2023.01.29.01.40.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 01:40:50 -0800 (PST)
Message-ID: <8a31500e-7376-618b-69a8-b8dee3a6899e@blackwall.org>
Date: Sun, 29 Jan 2023 11:40:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <1dcd4638d78c469eaa2f528de1f69b098222876f.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <1dcd4638d78c469eaa2f528de1f69b098222876f.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 07/16] net: bridge: Maintain number of
 MDB entries in net_bridge_mcast_port
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

On 26/01/2023 19:01, Petr Machata wrote:
> The MDB maintained by the bridge is limited. When the bridge is configured
> for IGMP / MLD snooping, a buggy or malicious client can easily exhaust its
> capacity. In SW datapath, the capacity is configurable through the
> IFLA_BR_MCAST_HASH_MAX parameter, but ultimately is finite. Obviously a
> similar limit exists in the HW datapath for purposes of offloading.
> 
> In order to prevent the issue of unilateral exhaustion of MDB resources,
> introduce two parameters in each of two contexts:
> 
> - Per-port and per-port-VLAN number of MDB entries that the port
>   is member in.
> 
> - Per-port and (when BROPT_MCAST_VLAN_SNOOPING_ENABLED is enabled)
>   per-port-VLAN maximum permitted number of MDB entries, or 0 for
>   no limit.
> 
> The per-port multicast context is used for tracking of MDB entries for the
> port as a whole. This is available for all bridges.
> 
> The per-port-VLAN multicast context is then only available on
> VLAN-filtering bridges on VLANs that have multicast snooping on.
> 
> With these changes in place, it will be possible to configure MDB limit for
> bridge as a whole, or any one port as a whole, or any single port-VLAN.
> 
> Note that unlike the global limit, exhaustion of the per-port and
> per-port-VLAN maximums does not cause disablement of multicast snooping.
> It is also permitted to configure the local limit larger than hash_max,
> even though that is not useful.
> 
> In this patch, introduce only the accounting for number of entries, and the
> max field itself, but not the means to toggle the max. The next patch
> introduces the netlink APIs to toggle and read the values.
> 
> Note that the per-port-VLAN mcast_max_groups value gets reset when VLAN
> snooping is enabled. The reason for this is that while VLAN snooping is
> disabled, permanent entries can be added above the limit imposed by the
> configured maximum. Under those circumstances, whatever caused the VLAN
> context enablement, would need to be rolled back, adding a fair amount of
> code that would be rarely hit and tricky to maintain. At the same time,
> the feature that this would enable is IMHO not interesting: I posit that
> the usefulness of keeping mcast_max_groups intact across
> mcast_vlan_snooping toggles is marginal at best.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_multicast.c | 131 +++++++++++++++++++++++++++++++++++++-
>  net/bridge/br_private.h   |   2 +
>  2 files changed, 132 insertions(+), 1 deletion(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

