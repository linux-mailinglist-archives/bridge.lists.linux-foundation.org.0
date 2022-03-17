Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCEF4DC1FD
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 09:56:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C0244187D;
	Thu, 17 Mar 2022 08:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R4VphigKBPLm; Thu, 17 Mar 2022 08:56:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0F4B141892;
	Thu, 17 Mar 2022 08:56:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7C81C0073;
	Thu, 17 Mar 2022 08:56:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A584AC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7FBFD4188D
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 47pp8Bom1b1I for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 08:56:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 088A04187D
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:56:00 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id y22so5711777eds.2
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 01:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=PuxphhtSyojHBQ+/3yS9PotueY01xJQMUnQnfyRU8xE=;
 b=e0ChA5vHBfySfK2dyMjln2cPS59EYlQLojTArVGCStxvXk2T9CLcJ4nqzFp5g7uJ9o
 2OjHeIOgvN3GxF/2AeDiy9a9I+VkoIAW8aefLLgqedaYsCx86FG0v3pE4r+01dEysYWA
 8O6kcme2AkqMtYb2Kq7O2fZPPBQjGW874EC28OKCX6DY4U5mpsknygnAZJbArYy4Bscv
 4oT9kUeLmGQis/UdflkN74IJU9mJGxfF9R2D4CGELJd+XegKCFiw7t8CmlskHRmDQqpC
 VHZ1l2Z08drqUZqNKSKQ8KNGGOcGWPjIjMbQemoWboiLE215K73qlONfGbOYqfaq8dcR
 4gPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=PuxphhtSyojHBQ+/3yS9PotueY01xJQMUnQnfyRU8xE=;
 b=mSVHMfAiozYrFzqteaRPf1CCNwLz929/vVz1+1kDQcw4hb2XPAJn4Zi759mVVKv5DS
 zhRjT2QhVlqv8kmtaeFXlwaby3e4mwGISVW736WGelWWE29n3tMSlA+10TAsgK7LJdkT
 yQCicUU3c56ZeLPQb5Ny+NMKUsdhj55XDJPN7My/omPmTCJNXN/Vpj97w5QAoW/x/XjI
 U/WMnXEJJQxLyLyuFYJwzroMybgKXRZYvbviLfgVyarRhh2QQPM9dGaX00ikjX73Z3/Q
 UYVJBLeu3jBqPkWugBVHNA0AoNee8hGA8M7K2BjLhL/TlvM3tYjTxrpx3iXfNKO1zqWr
 vrlg==
X-Gm-Message-State: AOAM531SH8awV45HR1ZkyEV3pVjDzFHQaw6gds+r7qG0qssqxp3DiT71
 WeFqEhi7DAPRPN+mfvlwhoKsyA==
X-Google-Smtp-Source: ABdhPJxx+3rbfd+yUOiVEOKjGCs7l/0IlgBmtPN16acGL+h8oBvpej4iEAVuQ6tFEsBGdjbE+9cNEQ==
X-Received: by 2002:aa7:c789:0:b0:413:605d:8d17 with SMTP id
 n9-20020aa7c789000000b00413605d8d17mr3282373eds.100.1647507358926; 
 Thu, 17 Mar 2022 01:55:58 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u5-20020a170906b10500b006ce6fa4f510sm2035490ejy.165.2022.03.17.01.55.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 01:55:58 -0700 (PDT)
Message-ID: <181d6379-aef0-e606-a1f1-b9f986d8c14d@blackwall.org>
Date: Thu, 17 Mar 2022 10:55:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-4-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220316150857.2442916-4-tobias@waldekranz.com>
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
Subject: Re: [Bridge] [PATCH v5 net-next 03/15] net: bridge: mst: Support
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

On 16/03/2022 17:08, Tobias Waldekranz wrote:
> Make it possible to change the port state in a given MSTI by extending
> the bridge port netlink interface (RTM_SETLINK on PF_BRIDGE).The
> proposed iproute2 interface would be:
> 
>     bridge mst set dev <PORT> msti <MSTI> state <STATE>
> 
> Current states in all applicable MSTIs can also be dumped via a
> corresponding RTM_GETLINK. The proposed iproute interface looks like
> this:
> 
> $ bridge mst
> port              msti
> vb1               0
> 		    state forwarding
> 		  100
> 		    state disabled
> vb2               0
> 		    state forwarding
> 		  100
> 		    state forwarding
> 
> The preexisting per-VLAN states are still valid in the MST
> mode (although they are read-only), and can be queried as usual if one
> is interested in knowing a particular VLAN's state without having to
> care about the VID to MSTI mapping (in this example VLAN 20 and 30 are
> bound to MSTI 100):
> 
> $ bridge -d vlan
> port              vlan-id
> vb1               10
> 		    state forwarding mcast_router 1
> 		  20
> 		    state disabled mcast_router 1
> 		  30
> 		    state disabled mcast_router 1
> 		  40
> 		    state forwarding mcast_router 1
> vb2               10
> 		    state forwarding mcast_router 1
> 		  20
> 		    state forwarding mcast_router 1
> 		  30
> 		    state forwarding mcast_router 1
> 		  40
> 		    state forwarding mcast_router 1
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/uapi/linux/if_bridge.h |  16 +++++
>  include/uapi/linux/rtnetlink.h |   1 +
>  net/bridge/br_mst.c            | 126 +++++++++++++++++++++++++++++++++
>  net/bridge/br_netlink.c        |  44 +++++++++++-
>  net/bridge/br_private.h        |  23 ++++++
>  5 files changed, 209 insertions(+), 1 deletion(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


