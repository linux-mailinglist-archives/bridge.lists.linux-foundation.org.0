Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 978C54FC3FF
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 20:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D6CC60E96;
	Mon, 11 Apr 2022 18:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ogLSbLgY616V; Mon, 11 Apr 2022 18:18:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8537360DC2;
	Mon, 11 Apr 2022 18:18:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4BBADC0084;
	Mon, 11 Apr 2022 18:18:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ECF6DC002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 18:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB65260E21
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 18:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mn4Fuaiks_5N for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 18:18:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD5B160DC2
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 18:18:45 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id u15so13953560ejf.11
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 11:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=xLduxMcizbLjZLku0d1Pid0+Lg47ppb12Fc5KrQaT+o=;
 b=BFUVMahPDjFgoJc44ix9fhh6e0ba/hq5tbW+L9ejWGl1iGUHBNsbAw5g0QAiZsChLx
 LewlvTF9hbfe79fYcmTJT9mN0NvXWBvqc1XmCC2Lm5SL4MLZ0wrUL9BpmVfFuF9MNaIs
 3l7I7YQkgcQiHY2SHBntesw5zyelZXYsNBqgnopy7OpEXcKvjV/C2BODmi6kn7pCjz7T
 Jfir9JV1kWF/TdxOe1YDP7kKxKk4JGGjv6bYujy0vv8ybZjDH5vXOliu/Gx9dgXpGpLn
 QiW4UcZbFst0hFaXcG+9jIwhFeWyMYZS0xVJFxe5LGVJkWLdeD9E1OWL6+u1pIICOfuF
 WkWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=xLduxMcizbLjZLku0d1Pid0+Lg47ppb12Fc5KrQaT+o=;
 b=Yy7lqAXltYSaO0x0B6h09IMxY15i5a8q+BGz2BaAv9MWbbbVURhgk/FSnc5JuNMNe5
 6DOEKg1YA9zFYvbfLomqJjSkFRkstUwP31/ZvJfpP0kAJRpZcpYzZtNxp39xivWLVZpw
 lAYKX7KHkWzcDxTlaxJpJDUK+kuNVQGzhDUS9cdww1qU/wmxUB9yxbQtM+eYF+M/AMhd
 hVTcSElKJtdH8DL4dk7pxNRiWgybj7vsXYu60B/A/U7zwQJuSX4LIEuuQLUYvVd8XJcF
 /6KzB3nhXWCtCq25/Ec4FfKINH8fLM0PyEOVSsXmqIYDdpz0Bhu/YyXKR8T5jqClNDyz
 o6pg==
X-Gm-Message-State: AOAM532QoElvPRXiI1PSFUSmWIGlNWUksA5l/wfIYS0yR5TjhRqhxWa9
 o21a6dWb1czFQjfKk+vEXsrrhg==
X-Google-Smtp-Source: ABdhPJztCo1Dmh5MHU3a9Hcdq6hXl5Wbfm2m+UiiPxYWd3WmDDOrCRk0fhpAqtsRSZPkS4Rregk6zQ==
X-Received: by 2002:a17:906:4546:b0:6e8:873a:22a8 with SMTP id
 s6-20020a170906454600b006e8873a22a8mr7343371ejq.711.1649701123587; 
 Mon, 11 Apr 2022 11:18:43 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 p24-20020a056402045800b0041614c8f79asm15176343edw.88.2022.04.11.11.18.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Apr 2022 11:18:43 -0700 (PDT)
Message-ID: <c46ac324-34a2-ca0c-7c8c-35dc9c1aa0ab@blackwall.org>
Date: Mon, 11 Apr 2022 21:18:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Roopa Prabhu <roopa@nvidia.com>, netdev@vger.kernel.org
References: <20220411172934.1813604-1-razor@blackwall.org>
 <0d08b6ce-53bb-bffa-4f04-ede9bfc8ab63@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <0d08b6ce-53bb-bffa-4f04-ede9bfc8ab63@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: idosch@idosch.org, bridge@lists.linux-foundation.org, davem@davemloft.net,
 kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next v2 0/8] net: bridge: add flush
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

On 11/04/2022 21:08, Roopa Prabhu wrote:
> 
> On 4/11/22 10:29, Nikolay Aleksandrov wrote:
>> Hi,
>> This patch-set adds support to specify filtering conditions for a flush
>> operation. This version has entirely different entry point (v1 had
>> bridge-specific IFLA attribute, here I add new RTM_FLUSHNEIGH msg and
>> netdev ndo_fdb_flush op) so I'll give a new overview altogether.
>> After me and Ido discussed the feature offlist, we agreed that it would
>> be best to add a new generic RTM_FLUSHNEIGH with a new ndo_fdb_flush
>> callback which can be re-used for other drivers (e.g. vxlan).
>> Patch 01 adds the new RTM_FLUSHNEIGH type, patch 02 then adds the
>> new ndo_fdb_flush call. With this structure we need to add a generic
>> rtnl_fdb_flush which will be used to do basic attribute validation and
>> dispatch the call to the appropriate device based on the NTF_USE/MASTER
>> flags (patch 03). Patch 04 then adds some common flush attributes which
>> are used by the bridge and vxlan drivers (target ifindex, vlan id, ndm
>> flags/state masks) with basic attribute validation, further validation
>> can be done by the implementers of the ndo callback. Patch 05 adds a
>> minimal ndo_fdb_flush to the bridge driver, it uses the current
>> br_fdb_flush implementation to flush all entries similar to existing
>> calls. Patch 06 adds filtering support to the new bridge flush op which
>> supports target ifindex (port or bridge), vlan id and flags/state mask.
>> Patch 07 converts ndm state/flags and their masks to bridge-private flags
>> and fills them in the filter descriptor for matching. Finally patch 08
>> fills in the target ifindex (after validating it) and vlan id (already
>> validated by rtnl_fdb_flush) for matching. Flush filtering is needed
>> because user-space applications need a quick way to delete only a
>> specific set of entries, e.g. mlag implementations need a way to flush only
>> dynamic entries excluding externally learned ones or only externally
>> learned ones without static entries etc. Also apps usually want to target
>> only a specific vlan or port/vlan combination. The current 2 flush
>> operations (per port and bridge-wide) are not extensible and cannot
>> provide such filtering.
>>
>> I decided against embedding new attrs into the old flush attributes for
>> multiple reasons - proper error handling on unsupported attributes,
>> older kernels silently flushing all, need for a second mechanism to
>> signal that the attribute should be parsed (e.g. using boolopts),
>> special treatment for permanent entries.
>>
>> Examples:
>> $ bridge fdb flush dev bridge vlan 100 static
>> < flush all static entries on vlan 100 >
>> $ bridge fdb flush dev bridge vlan 1 dynamic
>> < flush all dynamic entries on vlan 1 >
>> $ bridge fdb flush dev bridge port ens16 vlan 1 dynamic
>> < flush all dynamic entries on port ens16 and vlan 1 >
>> $ bridge fdb flush dev ens16 vlan 1 dynamic master
>> < as above: flush all dynamic entries on port ens16 and vlan 1 >
>> $ bridge fdb flush dev bridge nooffloaded nopermanent self
>> < flush all non-offloaded and non-permanent entries >
>> $ bridge fdb flush dev bridge static noextern_learn
>> < flush all static entries which are not externally learned >
>> $ bridge fdb flush dev bridge permanent
>> < flush all permanent entries >
>> $ bridge fdb flush dev bridge port bridge permanent
>> < flush all permanent entries pointing to the bridge itself >
>>
>> Note that all flags have their negated version (static vs nostatic etc)
>> and there are some tricky cases to handle like "static" which in flag
>> terms means fdbs that have NUD_NOARP but *not* NUD_PERMANENT, so the
>> mask matches on both but we need only NUD_NOARP to be set. That's
>> because permanent entries have both set so we can't just match on
>> NUD_NOARP. Also note that this flush operation doesn't treat permanent
>> entries in a special way (fdb_delete vs fdb_delete_local), it will
>> delete them regardless if any port is using them. We can extend the api
>> with a flag to do that if needed in the future.
>>
>> Patch-sets (in order):
>>   - Initial flush infra and fdb flush filtering (this set)
>>   - iproute2 support
>>   - selftests
>>
>> Future work:
>>   - mdb flush support (RTM_FLUSHMDB type)
>>
>> Thanks to Ido for the great discussion and feedback while working on this.
>>
> Cant we pile this on to RTM_DELNEIGH with a flush flag ?.
> 
> It is a bulk del, and sounds seems similar to the bulk dev del discussion on netdev a few months ago (i dont remember how that api ended up to be. unless i am misremembering).
> 
> neigh subsystem also needs this, curious how this api will work there.
> 
> (apologies if you guys already discussed this, did not have time to look through all the comments)
> 
> 
> 

I thought about that option, but I didn't like overloading delneigh like that.
del currently requires a mac address and we need to either signal the device supports
a null mac, or we should push that verification to ndo_fdb_del users. Also we'll have
attributes which are flush-specific and will work only when flushing as opposed to when
deleting a specific mac, so handling them in the different cases can become a pain.
MDBs will need DELMDB to be modified in a similar way.

IMO a separate flush op is cleaner, but I don't have a strong preference.
This can very easily be adapted to delneigh with just a bit more mechanical changes
if the mac check is pushed to the ndo implementers.

FLUSHNEIGH can easily work for neighs, just need another address family rtnl_register
that implements it, the new ndo is just for PF_BRIDGE. :)

Cheers,
 Nik


