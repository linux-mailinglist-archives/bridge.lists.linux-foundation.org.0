Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBD34FE74C
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 19:38:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC5FF610B6;
	Tue, 12 Apr 2022 17:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKtMNfbMS7b9; Tue, 12 Apr 2022 17:38:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 371E3610B9;
	Tue, 12 Apr 2022 17:38:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DDF3AC0088;
	Tue, 12 Apr 2022 17:38:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1264FC002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 17:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDA18402E2
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 17:38:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Csgf_NRxfzz0 for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 17:38:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 649D340200
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 17:38:02 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id c6so8104776edn.8
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 10:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=SuC5RiFfkwX9myE0wNWiGRa7nHKCHfIZUYphgXOL2/g=;
 b=AjS47ErAH5JvMOawIWhBHjxgn6AKW18TcQ/WbkEe8po7PMMHNFvGVMHyNZYDnNpg7J
 jSPaY07X50r5gQlrUl9XaoFZGXggC3TMJfzg5oGGsYKemxNe3SXKgXfgdmHcEbcwmvRi
 38VNYzUN3AulcCeuAdpaStsyEQrONSJiU8lwoHZMpl9u2VwVYqaaLJeH9J+nmu1eg9Pw
 kcUDpYpeEvYds73PEVrhKV7kD8Pn5NM7WilM8O49HZWr87V0LaYljixdVfD64DbCDG3/
 F6KXKWUcx4aKcATCLTf2dC29XdP5fWZiWkUzzL3I26vdAaU1U3f4eQdG6CKzs5KSVn/s
 LZ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=SuC5RiFfkwX9myE0wNWiGRa7nHKCHfIZUYphgXOL2/g=;
 b=JxJkIvTfPtz/ZIhGzYHj+VCue7uL5kJURvCob0GAnmOSXKGh92iiyvHFra31Afo/MN
 SiuYw+/nl9rqtbFu7NNnrmkowNzBCXoo+I5+Iq7fJ4GDb5R+sLJSM82b+qMn676PR7xz
 RIhXjVkF3uVC//ODAzhSu+L4iAiv4O5dzEz7/0WcaAWvQw0VB3PAVYcVlvAmupKRiBZu
 IPPrjrYNgItff0ZniDfCC9oAdxC0bz6szpb0QytrcGLw/4STeHResYfAn/q/l9jFRD95
 /GKeClLWPTGm2/eQrUM2d77Th1CSvipG/Fwh138ZmP6OXvYEj1TuO5lH+WSBkZdwwpmT
 X/dw==
X-Gm-Message-State: AOAM532atICHLPHmNOqqUs/mUs8BFHCUGdQQkTlwnzwqesM4n3958JlR
 qkLgHt2o6SF/RTGNDblRgiXJZA==
X-Google-Smtp-Source: ABdhPJyjNPPcXZgxcqKmVczz/pa5CBQ/QIhRILKTwqZSMuKFi4QYdx3urMwvdRjECANV+ewpt1gy+g==
X-Received: by 2002:a05:6402:5186:b0:419:651e:5137 with SMTP id
 q6-20020a056402518600b00419651e5137mr40464594edd.335.1649785080396; 
 Tue, 12 Apr 2022 10:38:00 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 lx17-20020a170906af1100b006e873dd9228sm4095506ejb.52.2022.04.12.10.37.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 10:38:00 -0700 (PDT)
Message-ID: <5d597756-2fe1-e7cc-9ef3-c0323e2274f2@blackwall.org>
Date: Tue, 12 Apr 2022 20:37:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Joachim Wiberg <troglobit@gmail.com>, Roopa Prabhu <roopa@nvidia.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-9-troglobit@gmail.com>
 <ebd182a2-20bc-471c-e649-a2689ea5a5d1@blackwall.org>
 <87v8ve9ppr.fsf@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <87v8ve9ppr.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 08/13] net: bridge: avoid
 classifying unknown multicast as mrouters_only
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

On 12/04/2022 20:27, Joachim Wiberg wrote:
> 
> Hi Nik,
> 
> and thank you for taking the time to respond!
> 
> On Tue, Apr 12, 2022 at 16:59, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>> On 11/04/2022 16:38, Joachim Wiberg wrote:
>>> Unknown multicast, MAC/IPv4/IPv6, should always be flooded according to
>>> the per-port mcast_flood setting, as well as to detected and configured
>>> mcast_router ports.
> 
> I realize I should've included a reference to RFC4541 here.  Will add
> that in the non-RFC patch.
> 
>>> This patch drops the mrouters_only classifier of unknown IP multicast
>>> and moves the flow handling from br_multicast_flood() to br_flood().
>>> This in turn means br_flood() must know about multicast router ports.
>> If you'd like to flood unknown mcast traffic when a router is present please add
>> a new option which defaults to the current state (disabled).
> 
> I don't think we have to add another option, because according to the
> snooping RFC[1], section 2.1.2 Data Forwarding Rules:
> 
>  "3) [..] If a switch receives an unregistered packet, it must forward
>   that packet on all ports to which an IGMP[2] router is attached.  A
>   switch may default to forwarding unregistered packets on all ports.
>   Switches that do not forward unregistered packets to all ports must
>   include a configuration option to force the flooding of unregistered
>   packets on specified ports. [..]"
> 
> From this I'd like to argue that our current behavior in the bridge is
> wrong.  To me it's clear that, since we have a confiugration option, we
> should forward unknown IP multicast to all MCAST_FLOOD ports (as well as
> the router ports).

Definitely not wrong. In fact:
"Switches that do not forward unregistered packets to all ports must
 include a configuration option to force the flooding of unregistered
 packets on specified ports. [..]"

is already implemented because the admin can mark any port as a router and
enable flooding to it.

> 
> Also, and more critically, the current behavior of offloaded switches do
> forwarding like this already.  So there is a discrepancy currently
> between how the bridge forwards unknown multicast and how any underlying
> switchcore does it.
> 
> Sure, we'll break bridge behavior slightly by forwarding to more ports
> than previous (until the group becomes known/registered), but we'd be
> standards compliant, and the behavior can still be controlled per-port.
> 
> [1]: https://www.rfc-editor.org/rfc/rfc4541.html#section-2.1.2
> [2]: Section 3 goes on to explain how this is similar also for MLD
> 

RFC4541 is only recommending, it's not a mandatory behaviour. This default has been placed
for a very long time and a lot of users and tests take it into consideration.
We cannot break such assumptions and start suddenly flooding packets, but we can
leave it up to the admin or distribution/network software to configure it as default.

>>> diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
>>> index 02bb620d3b8d..ab5b97a8c12e 100644
>>> --- a/net/bridge/br_forward.c
>>> +++ b/net/bridge/br_forward.c
>>> @@ -199,9 +199,15 @@ static struct net_bridge_port *maybe_deliver(
>>>  void br_flood(struct net_bridge *br, struct sk_buff *skb,
>>>  	      enum br_pkt_type pkt_type, bool local_rcv, bool local_orig)
>>>  {
>>> +	struct net_bridge_mcast *brmctx = &br->multicast_ctx;
>> Note this breaks per-vlan mcast. You have to use the inferred mctx.
> 
> Thank you, this was one of the things I was really unsure about since
> the introduction of per-VLAN support.  I'll extend the prototype and
> include the brmctx from br_handle_frame_finish().  Thanks!
> 
> Best regards
>  /Joachim

