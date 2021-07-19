Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7A63CCEB0
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 09:41:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0D5C60767;
	Mon, 19 Jul 2021 07:41:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fwgVlOzWu3aq; Mon, 19 Jul 2021 07:41:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 84F7A605E2;
	Mon, 19 Jul 2021 07:41:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37963C0022;
	Mon, 19 Jul 2021 07:41:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9FC92C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 07:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72A79403BD
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 07:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H2IdqQ3PBwws for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 07:41:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34122403A0
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 07:41:52 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id hr1so27128997ejc.1
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 00:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CorYWTYS+AZSVl2A6eCbkMb9gbO0BA3m9gMbqC/pL4k=;
 b=kpdTDoEnwi54KR6A65rYlFI4JLgphFiQMz8WR15BXIM8F/Jz5Frc/Hnk77CxAUCi+W
 Pt1Z1xWy/Od95f4IINaC8d2nHz8GemWFzxFuO5uHqGUsM/W8ejBJzJbHcWJGSFBwADo2
 IfRZnaq0YL37YWhWrcUt+fEqa/D5+BMDNP8oNDY5y2TQR/w3VqheUPwvRlNQFMlDr6k8
 kl+aqtQ7SpuoQRiQXlejWIQNjMIcIAmA8OQugmLCvrNsIXv9WFuYQPyz4ecB5ISTsHBZ
 oJw+dA+Wo4O86rO7/WV8vPdaCacvmwwNtTidTHKM8XZ+X7zNLcUi3x3DlWqGiXdrexnW
 wqcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CorYWTYS+AZSVl2A6eCbkMb9gbO0BA3m9gMbqC/pL4k=;
 b=ICqpb+oHJfPRTyFX8VQWsBNJFH3M8wietNMHlncs8ACM3bqur0vhZ3PnUSO7cUs6am
 DsFdUQ+k+hOm4wbvhCnEeWbvwWupfMSf4v8w8CEkyy8gqwOSfQOe2ViHfcAWyAL/ad6S
 g4kmypfxEsnnWaeWRNXMoB/lwfOPDsdfKamAJQzZQK8ZBorWi/mb9iozdZrcsAJZa7Vr
 OrRxVm7YSx6SbHkUSqlDkYHzo2uL+xyt4OnFMJad3NJPEV5tT21xBAtrXHQWMlzP7zA9
 K2HEc5ewYxmphK/mCxAZ2XOIEM8JcfMiDzl0uKBCA6TAUio3i5qyFa98Cz7stQBUCnbx
 nttg==
X-Gm-Message-State: AOAM530vweW9OzKiCFKpWWsEII9I9yngIaWr5x2nPba/oWEavgsJCSE7
 fyVc1kyAo5MQzAbLky0itJc=
X-Google-Smtp-Source: ABdhPJxB3xCTIGOQlGeNrCtpdZ1wJe/NXomir2ZJqQ5j3mnJrJpXgbuelyjgfZCNtqQIAhHzjc4kjA==
X-Received: by 2002:a17:907:97c9:: with SMTP id
 js9mr26102224ejc.109.1626680510348; 
 Mon, 19 Jul 2021 00:41:50 -0700 (PDT)
Received: from skbuf ([82.76.66.29])
 by smtp.gmail.com with ESMTPSA id o23sm5570846ejc.124.2021.07.19.00.41.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 00:41:50 -0700 (PDT)
Date: Mon, 19 Jul 2021 10:41:48 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <20210719074148.xlm7syfm76fuzsxy@skbuf>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-16-vladimir.oltean@nxp.com>
 <7c2b81e8-db72-4665-fe81-7254cba1e797@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7c2b81e8-db72-4665-fe81-7254cba1e797@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, bridge@lists.linux-foundation.org,
 Jiri Pirko <jiri@resnulli.us>, DENG Qingfang <dqfext@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Ido Schimmel <idosch@idosch.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Marek Behun <kabel@blackhole.sk>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 15/15] net: dsa: tag_dsa: offload
 the bridge forwarding process
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

On Sun, Jul 18, 2021 at 07:47:22PM -0700, Florian Fainelli wrote:
> On 7/18/2021 2:44 PM, Vladimir Oltean wrote:
> > From: Tobias Waldekranz <tobias@waldekranz.com>
> >
> > Allow the DSA tagger to generate FORWARD frames for offloaded skbs
> > sent from a bridge that we offload, allowing the switch to handle any
> > frame replication that may be required. This also means that source
> > address learning takes place on packets sent from the CPU, meaning
> > that return traffic no longer needs to be flooded as unknown unicast.
> >
> > Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> > Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
>
> This looks pretty complicated to but if this is how it has to work, it has
> to. For tag_brcm.c we can simply indicate that the frame to be transmitted
> should have a specific bitmask of egress ports.

Complicated in the sense that we need to nail the VLAN ID so that
the FDB / MDB is looked up correctly by the accelerator, to ensure that
it produces a result that is in sync with the software tables?

What you are proposing is not really TX forwarding offload but TX
replication offload. A CPU-injected packet targeting multiple egress
ports is still a control plane packet nonetheless, with all features
that characterize one:
- Ingress stage of the CPU port is bypassed (no hardware address
  learning for that MAC SA)
- FDB lookup is bypassed (we trust the software). This is also perhaps
  an advantage, because for example, if we have a MAC address learned
  towards the CPU port, and then we inject a packet from the CPU towards
  that destination MAC address, then a data plane packet would be
  dropped due to source port pruning (source == destination port), but a
  control plane packet would be sent regardless.
- Can inject into a BLOCKING egress port (we trust the software not to
  do that)

Whereas this patch set is really about laying the ground for data plane
packets to be safely created and sent by the network stack. There are
switches which have a clear distinction between the control plane and
the data plane, and injecting a control packet is a fairly expensive
operation. So it would be very good to support this operating mode,
regardless of whatever else we do.

I can look into adding support for your use case with just the
replication offload, since it should be possible nonetheless, and if you
really don't have the option to send a data plane packet then it is a
valid approach too, however I believe that the brick wall will be where
to encode the destination bit mask in the egress skb. For the full TX
forwarding offload we managed to dodge that because we already had
skb->offload_fwd_mark, but that's just one bit and we would need more.
I'm thinking we would need to add another bit (skb->offload_tx_replication)
and then add a struct list_head tx_dev to the skb which contains all the
net devices that the packet was not cloned to?
