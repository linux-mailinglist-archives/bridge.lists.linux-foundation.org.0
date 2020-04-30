Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198411BF66E
	for <lists.bridge@lfdr.de>; Thu, 30 Apr 2020 13:20:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB9F4886DF;
	Thu, 30 Apr 2020 11:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQDF3EKHYUgX; Thu, 30 Apr 2020 11:20:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FECD886D9;
	Thu, 30 Apr 2020 11:20:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2766CC016F;
	Thu, 30 Apr 2020 11:20:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 53431C016F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 11:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F3E386C7A
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 11:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 062VFov7yhko for <bridge@lists.linux-foundation.org>;
 Thu, 30 Apr 2020 11:20:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6DDF486C15
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 11:20:27 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id u6so6042183ljl.6
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 04:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7QEu8lQDX7asS/EZnMosCw8iJ8orrbIm4oxu4zfa7w8=;
 b=HucCPpnpma0D9qFGBTzTef+mq4pL65ONVeTzpZom5AgHG+MJYKVQrLsrWUbXmKSWRA
 RsmDdNSJ8Lcfq2n85ORjZE7iWC3gulDmD1hdMaONaELzssFXRIg1uvtrYgDcI6limxZN
 EZJiO5nW2WdKnP7m5Ndy1ZNZ85oi6eISP3/a8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7QEu8lQDX7asS/EZnMosCw8iJ8orrbIm4oxu4zfa7w8=;
 b=gLl+z0E0wTG5zAZ1P6ldKQ+23BlPNsOoBGN4P/mZSDygqpLb1NO/Pm2z2xBga7c9I6
 kARTp9irm8kc8g6BFL6Fg42IcXLkJH4ns7yUFaQiw2m6pbBQ6PWQZuPQ0At//VV4Nvjh
 BgVbzDDBHy3MzkzXf+77s3XooKnsnx9UZEBcjCwSl9Kt9UsqGZHJILhA3NDy8ImmvuQ+
 k3VVHqF/KRJMYl/X3x4ajdFUUqsP+eLPQXS+aKEgbWgyaNCzua2Wt0TTbFMnVzuRhhZI
 1XIqZRgtWAjkirGCl8MS7EMfT3kcRVArSLe03huULZAF3CLdbLQzxC3kDs9++rfJOvgS
 CNxQ==
X-Gm-Message-State: AGi0Puab+Mf/eQLyT+f0NxuJTrX+iDNVm8kiDbLsWw6BFaOHfDsekWNv
 q3FsYAbrHjbBsIZ9fxS3rHLhHA==
X-Google-Smtp-Source: APiQypLGoRK/B5UEMM3ebOwPImgOIEU58k6prYsh3w5eqcv3NsOneJlrmwbIIVMBMK48+FaohW+KLw==
X-Received: by 2002:a05:651c:449:: with SMTP id
 g9mr1937084ljg.278.1588245625383; 
 Thu, 30 Apr 2020 04:20:25 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a12sm4050511ljj.64.2020.04.30.04.20.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 04:20:24 -0700 (PDT)
To: Ido Schimmel <idosch@idosch.org>,
 Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
References: <85b1e301-8189-540b-b4bf-d0902e74becc@profihost.ag>
 <20200430105551.GA4068275@splinter>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <4b3a6079-d8d4-24c5-8fc9-15bcb96bca80@cumulusnetworks.com>
Date: Thu, 30 Apr 2020 14:20:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200430105551.GA4068275@splinter>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 davem@davemloft.net
Subject: Re: [Bridge] BUG: soft lockup while deleting tap interface from
 vlan aware bridge
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

On 30/04/2020 13:55, Ido Schimmel wrote:
> On Wed, Apr 29, 2020 at 10:52:35PM +0200, Stefan Priebe - Profihost AG wrote:
>> Hello,
>>
>> while running a stable vanilla kernel 4.19.115 i'm reproducably get this
>> one:
>>
>> watchdog: BUG: soft lockup - CPU#38 stuck for 22s! [bridge:3570653]
>>
>> ...
>>
>> Call
>> Trace:nbp_vlan_delete+0x59/0xa0br_vlan_info+0x66/0xd0br_afspec+0x18c/0x1d0br_dellink+0x74/0xd0rtnl_bridge_dellink+0x110/0x220rtnetlink_rcv_msg+0x283/0x360
> 
> Nik, Stefan,
> 
> My theory is that 4K VLANs are deleted in a batch and preemption is
> disabled (please confirm). For each VLAN the kernel needs to go over the

Right, that's what I was expecting. :-)

> entire FDB and delete affected entries. If the FDB is very large or the
> FDB lock is contended this can cause the kernel to loop for more than 20
> seconds without calling schedule().

Indeed, we already have that issue also with expire which goes over all entries.
I have rough patches that improve the situation from way back, will have to go over and
polish them to submit when I got more time. Long ago I've tested it with expiring 10 million
entries but on a rather powerful CPU.

> 
> To reproduce I added mdelay(100) in br_fdb_delete_by_port() and ran
> this:
> 
> ip link add name br10 up type bridge vlan_filtering 1
> ip link add name dummy10 up type dummy
> ip link set dev dummy10 master br10
> bridge vlan add vid 1-4094 dev dummy10 master
> bridge vlan del vid 1-4094 dev dummy10 master
> 
> Got a similar trace to Stefan's. Seems to be fixed by attached:
> 
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index a774e19c41bb..240e260e3461 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -615,6 +615,7 @@ int br_process_vlan_info(struct net_bridge *br,
>                                                v - 1, rtm_cmd);
>                                 v_change_start = 0;
>                         }
> +                       cond_resched();
>                 }
>                 /* v_change_start is set only if the last/whole range changed */
>                 if (v_change_start)
> 
> WDYT?
> 

Maybe we can batch the deletes at say 32 at a time?
Otherwise looks good to me, thanks!
