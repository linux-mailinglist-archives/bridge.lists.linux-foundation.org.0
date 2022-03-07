Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22E64D025D
	for <lists.bridge@lfdr.de>; Mon,  7 Mar 2022 16:03:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46AED405E3;
	Mon,  7 Mar 2022 15:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0K6Tl03fcYv8; Mon,  7 Mar 2022 15:03:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C620240524;
	Mon,  7 Mar 2022 15:03:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8334FC0073;
	Mon,  7 Mar 2022 15:03:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0FD15C000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 15:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04E7A60E7B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 15:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a0fKoTlco6g5 for <bridge@lists.linux-foundation.org>;
 Mon,  7 Mar 2022 15:03:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3E6D60E79
 for <bridge@lists.linux-foundation.org>; Mon,  7 Mar 2022 15:03:06 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id qt6so32549487ejb.11
 for <bridge@lists.linux-foundation.org>; Mon, 07 Mar 2022 07:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=1jGYNh9y1jCRU2Ce5sNN/KIt4KeyZCiwBUd3+H3/o08=;
 b=EPe6VKyTN3nTIzc2Xu7I2TzJ81mO0rAjis5e8dPqpR3ke+IxwnOlBfNPx+2ws/yGE3
 6N4/8USZpMXGOwMkBkqaPsVFdpV8/CL4M6KipioCaKru2ps8txN/LvRTjfo3odLRts6j
 fi+KihWJv3uBnoAWDW/kotNPPjMlBie/FtXtowgGvSNW5z1WUt6J+yYac/cEsP5deNzy
 MA/WWVTVHSo3WhWOdvDyX/xgxHTh5EllYSTqr1Fwj2IiAvONMN961PLJ9mcXqr8FOl2c
 GrZBmpYQfZ3YXMy3aolMw9hj5Rniup+pGJVxlRmHJbWomoHnT+ZUyYSJXJ315/KKHgwj
 vM0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=1jGYNh9y1jCRU2Ce5sNN/KIt4KeyZCiwBUd3+H3/o08=;
 b=JryBprJ1DzBZztKQXbSUxIDlMK0wccMkPLN9Hjk7Cr81FZLBGl+iHI5YGpGRe3XTur
 YR4eGvB/p9d59TuPQUlgBv3SF4lnxZ5ER9MWRivYKZuvDjFdFPRKIVODskr4f6xDYs5v
 a2rW0p4sIoF6dWQHLFJVN6liDqooBvM7IwACPhgYbaIGEZnfKRwUSpeBaLb0QxKwDqQ2
 kk1qJiTiIKERlf4in4zNESmoLfVNTKVAtANAiJ0utwdE3x5xhJpoTDoYTtQ58nEFOJOv
 ykJpwP+b0bEGxJH0w03eKG584rwEFeHhX2/tm6rCDt+I+acpPPAm6T/iE36w+56T70kv
 E6nw==
X-Gm-Message-State: AOAM533Iln+aEZ6W10Ew/Hm92z5J9IEZuqftYro+zV55ZmYQEM+vfVU7
 g0RX5IgHUw05VjMfGMnF3+UfmQ==
X-Google-Smtp-Source: ABdhPJxw/ApTPxDn/10PdEkN1SCTAkfYKFxobqWQQuC1vOOuDcHNFUBkcLCxGISX5Csx6MeskjbIMg==
X-Received: by 2002:a17:907:7f03:b0:6d9:acb2:33ac with SMTP id
 qf3-20020a1709077f0300b006d9acb233acmr9165596ejc.705.1646665384867; 
 Mon, 07 Mar 2022 07:03:04 -0800 (PST)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 jl2-20020a17090775c200b006dabe8887b8sm3535382ejc.21.2022.03.07.07.03.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 07:03:04 -0800 (PST)
Message-ID: <4fc171ed-98dd-2574-6373-f58b4b9e036a@blackwall.org>
Date: Mon, 7 Mar 2022 17:03:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-4-tobias@waldekranz.com>
 <53EED92D-FEAC-4CC6-AF2A-52E73F839AB5@blackwall.org>
 <874k49olix.fsf@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <874k49olix.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v2 net-next 03/10] net: bridge: mst: Support
 setting and reporting MST port states
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

On 07/03/2022 17:00, Tobias Waldekranz wrote:
> On Wed, Mar 02, 2022 at 00:19, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>> On 1 March 2022 11:03:14 CET, Tobias Waldekranz <tobias@waldekranz.com> wrote:
>>> Make it possible to change the port state in a given MSTI. This is
>>> done through a new netlink interface, since the MSTIs are objects in
>>> their own right. The proposed iproute2 interface would be:
>>>
>>>    bridge mst set dev <PORT> msti <MSTI> state <STATE>
>>>
>>> Current states in all applicable MSTIs can also be dumped. The
>>> proposed iproute interface looks like this:
>>>
>>> $ bridge mst
>>> port              msti
>>> vb1               0
>>> 		    state forwarding
>>> 		  100
>>> 		    state disabled
>>> vb2               0
>>> 		    state forwarding
>>> 		  100
>>> 		    state forwarding
>>>
>>> The preexisting per-VLAN states are still valid in the MST
>>> mode (although they are read-only), and can be queried as usual if one
>>> is interested in knowing a particular VLAN's state without having to
>>> care about the VID to MSTI mapping (in this example VLAN 20 and 30 are
>>> bound to MSTI 100):
>>>
>>> $ bridge -d vlan
>>> port              vlan-id
>>> vb1               10
>>> 		    state forwarding mcast_router 1
>>> 		  20
>>> 		    state disabled mcast_router 1
>>> 		  30
>>> 		    state disabled mcast_router 1
>>> 		  40
>>> 		    state forwarding mcast_router 1
>>> vb2               10
>>> 		    state forwarding mcast_router 1
>>> 		  20
>>> 		    state forwarding mcast_router 1
>>> 		  30
>>> 		    state forwarding mcast_router 1
>>> 		  40
>>> 		    state forwarding mcast_router 1
>>>
>>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>>> ---
>>> include/uapi/linux/if_bridge.h |  16 +++
>>> include/uapi/linux/rtnetlink.h |   5 +
>>> net/bridge/br_mst.c            | 244 +++++++++++++++++++++++++++++++++
>>> net/bridge/br_netlink.c        |   3 +
>>> net/bridge/br_private.h        |   4 +
>>> 5 files changed, 272 insertions(+)
>>>
>>> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
>>> index b68016f625b7..784482527861 100644
>>> --- a/include/uapi/linux/if_bridge.h
>>> +++ b/include/uapi/linux/if_bridge.h
>>> @@ -785,4 +785,20 @@ enum {
>>> 	__BRIDGE_QUERIER_MAX
>>> };
>>> #define BRIDGE_QUERIER_MAX (__BRIDGE_QUERIER_MAX - 1)
>>> +
>>> +enum {
>>> +	BRIDGE_MST_UNSPEC,
>>> +	BRIDGE_MST_ENTRY,
>>> +	__BRIDGE_MST_MAX,
>>> +};
>>> +#define BRIDGE_MST_MAX (__BRIDGE_MST_MAX - 1)
>>> +
>>> +enum {
>>> +	BRIDGE_MST_ENTRY_UNSPEC,
>>> +	BRIDGE_MST_ENTRY_MSTI,
>>> +	BRIDGE_MST_ENTRY_STATE,
>>> +	__BRIDGE_MST_ENTRY_MAX,
>>> +};
>>> +#define BRIDGE_MST_ENTRY_MAX (__BRIDGE_MST_ENTRY_MAX - 1)
>>> +
>>> #endif /* _UAPI_LINUX_IF_BRIDGE_H */
>>> diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
>>> index 0970cb4b1b88..4a48f3ce862c 100644
>>> --- a/include/uapi/linux/rtnetlink.h
>>> +++ b/include/uapi/linux/rtnetlink.h
>>> @@ -192,6 +192,11 @@ enum {
>>> 	RTM_GETTUNNEL,
>>> #define RTM_GETTUNNEL	RTM_GETTUNNEL
>>>
>>> +	RTM_GETMST = 124 + 2,
>>> +#define RTM_GETMST	RTM_GETMST
>>> +	RTM_SETMST,
>>> +#define RTM_SETMST	RTM_SETMST
>>> +
>>
>> I think you should also update selinux  (see nlmsgtab.c)
>> I'll think about this one, if there is some nice way to avoid the new rtm types.
>>
>>> 	__RTM_MAX,
>>> #define RTM_MAX		(((__RTM_MAX + 3) & ~3) - 1)
>>> };
>>> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
>>> index f3b8e279b85c..8dea8e7257fd 100644
>>> --- a/net/bridge/br_mst.c
>>> +++ b/net/bridge/br_mst.c
>>> @@ -120,3 +120,247 @@ int br_mst_set_enabled(struct net_bridge *br, unsigned long val)
>>> 	br_opt_toggle(br, BROPT_MST_ENABLED, !!val);
>>> 	return 0;
>>> }
>>> +
>>> +static int br_mst_nl_get_one(struct net_bridge_port *p, struct sk_buff *skb,
>>> +			     struct netlink_callback *cb)
>>> +{
>>> +	struct net_bridge_vlan_group *vg = nbp_vlan_group(p);
>>> +	int err = 0, idx = 0, s_idx = cb->args[1];
>>> +	struct net_bridge_vlan *v;
>>> +	struct br_port_msg *bpm;
>>> +	struct nlmsghdr *nlh;
>>> +	struct nlattr *nest;
>>> +	unsigned long *seen;
>>> +
>>
>> Reverse xmas tree
> 
> Both of these lines end at the 28th column. Is there some other
> tiebreaking mechanism that forces the reverse ordering of nest and seen?
> 
> In a variable-width font, the nest declaration does appear shorter. I
> remember that you did not have your laptop with you, could that be it?

Ah yes, you're right. :) Sorry for the noise.

