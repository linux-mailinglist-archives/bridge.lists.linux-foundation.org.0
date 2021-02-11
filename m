Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D442318437
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 05:16:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12DB986BFF;
	Thu, 11 Feb 2021 04:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PDDN4nWq29d3; Thu, 11 Feb 2021 04:16:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E52B486BED;
	Thu, 11 Feb 2021 04:16:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BF732C013A;
	Thu, 11 Feb 2021 04:16:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AAA50C013A
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9E9D986BFF
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6IieV1ZbfEuE for <bridge@lists.linux-foundation.org>;
 Thu, 11 Feb 2021 04:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0B9F686BED
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:16:39 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id g3so2635536plp.2
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 20:16:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=d6XXSm05yAYK7MxQIvnC5Li5SPel5Sylz9f4M9rMQbA=;
 b=OUpVDVStC18mNs0vHeJDSl9HhvfAaUXCjIMBhqAOBx/7YyyOhkZHLh0FvNoEIpIQPp
 q5mqfcwfXfWHy6u1lyayaQkL4hpnMlnbCwN+bm2WjpJB84rVzVFfiwZfp03pQpqJ7Mh5
 Zo5pJkfPKJxzv89/8m7f+eClZzRs7hpbwntEKuFECqZMe1voBfOfxlEOxPY+XGqTig4H
 QpMX59GSb1EV+H3F11emfCeFwYaqLBNjtpxXoxDE2iQl5BWaLcJpU6e7FVhusZ7iLsOo
 I33cVczpjAf9BYw298Dee57df69Lr0xNk51TRqQdD2H1nlt+V/ExxLzrrVizMRCjdoAa
 Dv0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d6XXSm05yAYK7MxQIvnC5Li5SPel5Sylz9f4M9rMQbA=;
 b=dpzEfU9t9Hq2set39peqG5zbueV/BcvgYQOurvf9PY1HR5e8nJZOF7YeSl7vnSYjjD
 vpCC15jzDv/zen3d5jFBnJSm9T71bXc8ttDt6WK5b93DLu3BnU/4AAwIcMrT+Wgu7wWc
 OKTc1Yl5YFjn0lSy4nekEhbRNex6Bn2qmExfH2KQ1xV5c3YkK9hwwx9EAzh2iu0aifxR
 UgJKIvDAKLmLclBmVAYjyy3jQb503zdBBtUaMxovk/XLPVMQtAVwy/dl7Z1hRxxOhPso
 MbEk9ChNUMauPulsPLGQzPEa16uRbvWA4gLGVkNWfq1duATovcYdlVizaf0V6BL/ZL03
 RodQ==
X-Gm-Message-State: AOAM533Oe8g1hSgu6QCOYr9OTJhiLPYnKzXktkWWIkVEuciqSQMazx/6
 NFm+m//VK03ObJSF6/qyEhs=
X-Google-Smtp-Source: ABdhPJx6+RkKLRD4BbWV6pgLX/xUo9HrNNK6MgG926SjgmKOJQGAUJtRZJn8RqtIzkR5c3jUl9yGHA==
X-Received: by 2002:a17:903:31d1:b029:de:8361:739b with SMTP id
 v17-20020a17090331d1b02900de8361739bmr6108584ple.85.1613016998604; 
 Wed, 10 Feb 2021 20:16:38 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u26sm3652020pfm.61.2021.02.10.20.16.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 20:16:37 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <20210210091445.741269-5-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <90e52ca0-e068-9a9e-9310-51e4dcd4ab09@gmail.com>
Date: Wed, 10 Feb 2021 20:16:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210210091445.741269-5-olteanv@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 04/11] net: dsa: configure proper
 brport flags when ports leave the bridge
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



On 2/10/2021 1:14 AM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> For a DSA switch port operating in standalone mode, address learning
> doesn't make much sense since that is a bridge function. In fact,
> address learning even breaks setups such as this one:
> 
>    +---------------------------------------------+
>    |                                             |
>    | +-------------------+                       |
>    | |        br0        |    send      receive  |
>    | +--------+-+--------+ +--------+ +--------+ |
>    | |        | |        | |        | |        | |
>    | |  swp0  | |  swp1  | |  swp2  | |  swp3  | |
>    | |        | |        | |        | |        | |
>    +-+--------+-+--------+-+--------+-+--------+-+
>           |         ^           |          ^
>           |         |           |          |
>           |         +-----------+          |
>           |                                |
>           +--------------------------------+
> 
> because if the switch has a single FDB (can offload a single bridge)
> then source address learning on swp3 can "steal" the source MAC address
> of swp2 from br0's FDB, because learning frames coming from swp2 will be
> done twice: first on the swp1 ingress port, second on the swp3 ingress
> port. So the hardware FDB will become out of sync with the software
> bridge, and when swp2 tries to send one more packet towards swp1, the
> ASIC will attempt to short-circuit the forwarding path and send it
> directly to swp3 (since that's the last port it learned that address on),
> which it obviously can't, because swp3 operates in standalone mode.
> 
> So DSA drivers operating in standalone mode should still configure a
> list of bridge port flags even when they are standalone. Currently DSA
> attempts to call dsa_port_bridge_flags with 0, which disables egress
> flooding of unknown unicast and multicast, something which doesn't make
> much sense. For the switches that implement .port_egress_floods - b53
> and mv88e6xxx, it probably doesn't matter too much either, since they
> can possibly inject traffic from the CPU into a standalone port,
> regardless of MAC DA, even if egress flooding is turned off for that
> port, but certainly not all DSA switches can do that - sja1105, for
> example, can't. So it makes sense to use a better common default there,
> such as "flood everything".
> 
> It should also be noted that what DSA calls "dsa_port_bridge_flags()"
> is a degenerate name for just calling .port_egress_floods(), since
> nothing else is implemented - not learning, in particular. But disabling
> address learning, something that this driver is also coding up for, will
> be supported by individual drivers once .port_egress_floods is replaced
> with a more generic .port_bridge_flags.
> 
> Previous attempts to code up this logic have been in the common bridge
> layer, but as pointed out by Ido Schimmel, there are corner cases that
> are missed when doing that:
> https://patchwork.kernel.org/project/netdevbpf/patch/20210209151936.97382-5-olteanv@gmail.com/
> 
> So, at least for now, let's leave DSA in charge of setting port flags
> before and after the bridge join and leave.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
