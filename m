Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F7C4FF2A8
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 10:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A72782B8C;
	Wed, 13 Apr 2022 08:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zFyI0vjT9AVT; Wed, 13 Apr 2022 08:51:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 714E282B93;
	Wed, 13 Apr 2022 08:51:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1A107C0088;
	Wed, 13 Apr 2022 08:51:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2200AC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 08:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0EE2A41705
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 08:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zCyky8KuxE8y for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 08:51:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB0A241701
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 08:51:18 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id c15so1322617ljr.9
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 01:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=F5SJAe2UiUjFV9fYjeVsnnxEIaa42rdLYEILkbvUZeQ=;
 b=bJiSnl0C+kDQnzduB0+4ZBVeclsximk3wH3kFDKEsVhwKyuKKH445EoyYcMUmyh2Dr
 1NV/hG8UvJGNGY3LV6o3tq0RoownLEylU/HY+5lTz+58lugJdWeexD/81HFJQs+kHHcb
 ZO09jiQGlj9gDe6RkBLCzoIhGxvdVHSjRZntGFwjjdFuNSBNM4Kk6LXR+a1HhrBcIosz
 HBJsl76m8E/tVZZhVp5We8zkX7RSJpOnLcURwNUW3hyXbK78UR/DD1uyiRIk4xlDNcb2
 tLlvgFFAyCYfGozmxn6w4hu1aK8ncXWds3i40PxGEwNuYYVSIER/18Qeiz4oqnLNmESp
 SJRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=F5SJAe2UiUjFV9fYjeVsnnxEIaa42rdLYEILkbvUZeQ=;
 b=sO7u2aKfQCR2qCpy+AKMn/4jvq1P6wPuSXbTG+Ie4csS3pBj/usasODlwq0TweZo+a
 +MpEfywF9IdVOM+XuWUnZ8fV1S1ZJquqZVCe94XNKjztVMkzvGSFJYP0G7iyZ7nINmzW
 NS86oRYDjWBihhxYBy9cy6Fw2qDafVrsE0Sb5EYwlDHjIk5HF9nPrwASQhppb+bNhdsB
 YahymYZ1vARu0VgWLZEDXwDMUBJDWznghP63xemhj6+y983WKVgapk9rhBmkckZE4Y8E
 rETTk79YN981EE18XXjGZbnVWZO7EViYrDSuyWUkrDM1aDxVs9iSboX4igMbe4tgLeOd
 0GMg==
X-Gm-Message-State: AOAM531wJr7A2br6GU7BtfM5Gi/J0Wn3LUnAj6oCdiWjdUBL6l81yHEs
 wL+3TTTmVKNHKJz0cZY7dik=
X-Google-Smtp-Source: ABdhPJy6t4E3aGHbZiUfduz3hnannFgK4e9u3WUCJ2jrbrIgJu6U+yz2vdB7OMj+AGYgI74MJf9nXQ==
X-Received: by 2002:a2e:bd13:0:b0:246:1ff8:6da1 with SMTP id
 n19-20020a2ebd13000000b002461ff86da1mr25758425ljq.219.1649839876327; 
 Wed, 13 Apr 2022 01:51:16 -0700 (PDT)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 x40-20020a056512132800b004489691436esm4046927lfu.146.2022.04.13.01.51.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 01:51:15 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <5d597756-2fe1-e7cc-9ef3-c0323e2274f2@blackwall.org>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-9-troglobit@gmail.com>
 <ebd182a2-20bc-471c-e649-a2689ea5a5d1@blackwall.org>
 <87v8ve9ppr.fsf@gmail.com>
 <5d597756-2fe1-e7cc-9ef3-c0323e2274f2@blackwall.org>
Date: Wed, 13 Apr 2022 10:51:14 +0200
Message-ID: <87pmll9xj1.fsf@gmail.com>
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

On Tue, Apr 12, 2022 at 20:37, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 12/04/2022 20:27, Joachim Wiberg wrote:
>> [snip]
>> From this I'd like to argue that our current behavior in the bridge is
>> wrong.  To me it's clear that, since we have a confiugration option, we
>> should forward unknown IP multicast to all MCAST_FLOOD ports (as well as
>> the router ports).
> Definitely not wrong. In fact:
> "Switches that do not forward unregistered packets to all ports must
>  include a configuration option to force the flooding of unregistered
>  packets on specified ports. [..]"
> is already implemented because the admin can mark any port as a router and
> enable flooding to it.

Hmm, I understand your point (here and below), and won't drive this
point further.  Instead I'll pick up on what you said in your first
reply ... (below, last)

Btw, thank you for taking the time to reply and explain your standpoint,
really helps my understanding of how we can develop the bridge further,
without breaking userspace! :)

>> [1]: https://www.rfc-editor.org/rfc/rfc4541.html#section-2.1.2
> RFC4541 is only recommending, it's not a mandatory behaviour. This
> default has been placed for a very long time and a lot of users and
> tests take it into consideration.

Noted.

> We cannot break such assumptions and start suddenly flooding packets,
> but we can leave it up to the admin or distribution/network software
> to configure it as default.

So, if I add a bridge flag, default off as you mentioned out earlier,
which changes the default behavior of MCAST_FLOOD, then you'd be OK with
that?  Something cheeky like this perhaps:

    if (!ipv4_is_local_multicast(ip_hdr(skb)->daddr))
       	BR_INPUT_SKB_CB(skb)->mrouters_only = !br_opt_get(br, BROPT_MCAST_FLOOD_RFC4541);


Best regards
 /Joachim
