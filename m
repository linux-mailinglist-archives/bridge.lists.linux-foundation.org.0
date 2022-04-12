Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 535394FE6D1
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 19:27:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A7F183E2A;
	Tue, 12 Apr 2022 17:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RjAlR_jm1BCh; Tue, 12 Apr 2022 17:27:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E35D083E3B;
	Tue, 12 Apr 2022 17:27:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A8484C0088;
	Tue, 12 Apr 2022 17:27:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C3157C002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 17:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA93483E2A
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 17:27:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WyhaJNi3luty for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 17:27:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3CB483E00
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 17:27:47 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id c15so24934144ljr.9
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 10:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ThAY3Ed/dk6m+iaWZn0wjwKwYvlAqcEvAvL+WRRtrb0=;
 b=VtOnhHywQSKBg+GRfttHHC8ae5LyqPtsEzJ/crFnQSt+funvR7/8PtgornBKeYebKm
 cSDCNVpdIF/s8sc7rYRvF34NyNzfqXXBenMwNmc7sAj4jZVBue5zwOzlUAXKuBURJUt3
 lSUqmpKK+p2diqCm3O7GhD45+L9W60gKgKQtGP9OCp4MMrMLjsqXgWqwRSwuoWGJ0CKv
 cNgHbrjTvri8o956YdK7UxS2I8N5NK1ZO5y9df/M8/Rx2Ha4hZ1dGTYcQ4KFJF8rgsk5
 zKvazIslIgk/T/+N2qDruNmqasEsvu5YyERumQr9NzFcTrnC5XYGJcm9ZJi1MM54FcVS
 4Kmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ThAY3Ed/dk6m+iaWZn0wjwKwYvlAqcEvAvL+WRRtrb0=;
 b=4YeqF7nLtPW9xdaoV8u5NHw5YTBmkUivWCzbMqp0pMRLd9cGJjJaKnoUBCBBC2Alnx
 fCmFvsuhEB+uESg5Qz88TiX87FCnRCnJb9S/eNmPMMdfKARSa+ZQcMfMKryPG2wyX6t7
 xiqEQ4rkLWmt5DKgc1ahN5duIlUROQRfCOVw/dKFM1CU2JzXfTLNzk/lXIYy/20V+n7v
 8M/mC2Ky460vxcPAs+ekflerz4I8wmq+7xyNpFUGyliwQrjsD3o3xCcit5z+4X5nlUUE
 DJLKRJ30i71MUP/PLWaMddEFkoc8IIZ97EHlTu+D1pyKRwV+7srAo4aXkzBOtIBopdiw
 euOw==
X-Gm-Message-State: AOAM533GbgCLO7Uv362Q3W+K9nOyGVtbNd5RveWxuKDw4avN5DslgNfv
 1qTNvTIgvMa7P4YbbKIKBRw=
X-Google-Smtp-Source: ABdhPJw/1hkLcDu4ztvmgaRue7Fo3A9Ykhtp/Im8rQj8AixV9nrhr1aAXSiK+6zVKX2+7TvfJZPyfQ==
X-Received: by 2002:a2e:9c94:0:b0:24b:3df5:64c with SMTP id
 x20-20020a2e9c94000000b0024b3df5064cmr17996207lji.324.1649784465750; 
 Tue, 12 Apr 2022 10:27:45 -0700 (PDT)
Received: from wbg (h-158-174-22-128.NA.cust.bahnhof.se. [158.174.22.128])
 by smtp.gmail.com with ESMTPSA id
 p15-20020a056512312f00b0046ba5c0da2esm780443lfd.121.2022.04.12.10.27.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 10:27:45 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <ebd182a2-20bc-471c-e649-a2689ea5a5d1@blackwall.org>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-9-troglobit@gmail.com>
 <ebd182a2-20bc-471c-e649-a2689ea5a5d1@blackwall.org>
Date: Tue, 12 Apr 2022 19:27:44 +0200
Message-ID: <87v8ve9ppr.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
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


Hi Nik,

and thank you for taking the time to respond!

On Tue, Apr 12, 2022 at 16:59, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 11/04/2022 16:38, Joachim Wiberg wrote:
>> Unknown multicast, MAC/IPv4/IPv6, should always be flooded according to
>> the per-port mcast_flood setting, as well as to detected and configured
>> mcast_router ports.

I realize I should've included a reference to RFC4541 here.  Will add
that in the non-RFC patch.

>> This patch drops the mrouters_only classifier of unknown IP multicast
>> and moves the flow handling from br_multicast_flood() to br_flood().
>> This in turn means br_flood() must know about multicast router ports.
> If you'd like to flood unknown mcast traffic when a router is present please add
> a new option which defaults to the current state (disabled).

I don't think we have to add another option, because according to the
snooping RFC[1], section 2.1.2 Data Forwarding Rules:

 "3) [..] If a switch receives an unregistered packet, it must forward
  that packet on all ports to which an IGMP[2] router is attached.  A
  switch may default to forwarding unregistered packets on all ports.
  Switches that do not forward unregistered packets to all ports must
  include a configuration option to force the flooding of unregistered
  packets on specified ports. [..]"

From this I'd like to argue that our current behavior in the bridge is
wrong.  To me it's clear that, since we have a confiugration option, we
should forward unknown IP multicast to all MCAST_FLOOD ports (as well as
the router ports).

Also, and more critically, the current behavior of offloaded switches do
forwarding like this already.  So there is a discrepancy currently
between how the bridge forwards unknown multicast and how any underlying
switchcore does it.

Sure, we'll break bridge behavior slightly by forwarding to more ports
than previous (until the group becomes known/registered), but we'd be
standards compliant, and the behavior can still be controlled per-port.

[1]: https://www.rfc-editor.org/rfc/rfc4541.html#section-2.1.2
[2]: Section 3 goes on to explain how this is similar also for MLD

>> diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
>> index 02bb620d3b8d..ab5b97a8c12e 100644
>> --- a/net/bridge/br_forward.c
>> +++ b/net/bridge/br_forward.c
>> @@ -199,9 +199,15 @@ static struct net_bridge_port *maybe_deliver(
>>  void br_flood(struct net_bridge *br, struct sk_buff *skb,
>>  	      enum br_pkt_type pkt_type, bool local_rcv, bool local_orig)
>>  {
>> +	struct net_bridge_mcast *brmctx = &br->multicast_ctx;
> Note this breaks per-vlan mcast. You have to use the inferred mctx.

Thank you, this was one of the things I was really unsure about since
the introduction of per-VLAN support.  I'll extend the prototype and
include the brmctx from br_handle_frame_finish().  Thanks!

Best regards
 /Joachim
