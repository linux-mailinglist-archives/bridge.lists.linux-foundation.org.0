Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B2A57CD31
	for <lists.bridge@lfdr.de>; Thu, 21 Jul 2022 16:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE16083FC2;
	Thu, 21 Jul 2022 14:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE16083FC2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=P+0nQPKe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pIycBbjhQ_BZ; Thu, 21 Jul 2022 14:20:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2B6A983FC3;
	Thu, 21 Jul 2022 14:20:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B6A983FC3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C1E22C007D;
	Thu, 21 Jul 2022 14:20:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 79A4EC002D
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 14:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D2534015F
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 14:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D2534015F
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=P+0nQPKe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jUCd5TaeLX5e for <bridge@lists.linux-foundation.org>;
 Thu, 21 Jul 2022 14:20:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD60840135
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD60840135
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 14:20:07 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id t3so2408000edd.0
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 07:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qXv6CUvSTMfPvvXNvz/Br6ygFjjEQtW3IZorN82JkiU=;
 b=P+0nQPKeA3PoGFzwFw3rHozuSxcxC8sThvgWr85Jgf8I0HLON9ganDXQeF+CXi03M8
 QjR7MJw6kirPoUgYH+Giho7PJvp2ReSEvld3BVDqJP1IlxeQfywVwXtpsBRJSXX4+jWb
 plznFF7jPvGt3gwaqtL2/00LYhCFhrX8Q2iWYZFHKd/mPx6Mpu3FViZ6AsRPoG3iofQI
 H3FmIsHff9UoPwOJzMMdft7cHqTf5qN4rDyGg8bdoUwiX6nh+bYwn2P7RsU/suilsCsu
 3pYjs4Ujkes4hhtM+BsOvm8IEzRBpXWF+HOV66ewkbbfBisnVv6XU9Kv1t4SKZAjMJNo
 0u+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qXv6CUvSTMfPvvXNvz/Br6ygFjjEQtW3IZorN82JkiU=;
 b=Dfb49uAGrg/fvmdDsltLPZhzptoLjh1ZJPdplRmVysdSBe1Yc1K5FmT/sv6aFC63wK
 NpVz3qED4J7R34GUjgSGov6tUqR5sv8Uc+Nw6t1UC411/b0i32zNu1xHJbVZY3vvjbcY
 QrazoyxTnW8FLhWabMZJ9a6qP6JHEigo8RstDawFQ465I5w+ie4vAN8w+34ixXpsRhWl
 vThfcCaHPkX1RzSQe/YnW6Jbs7aDvXq1KsiLqBKPOzcFepfN2vRcdggzAqzdOLo632Zp
 RFJi48b5xaSMtJ+J/jetByFcsdrLCXSulzdKiuhiz13RTgbs9xeJbX7pQNdpQxWNsyCA
 pQXQ==
X-Gm-Message-State: AJIora8+5IJwzClywKUubcHz6MRVCWf3TiffN/0H2payd/HZZbq3Lf37
 fyjHosTJ0BPrJMQv8uv7zk4=
X-Google-Smtp-Source: AGRyM1uGxCFM+uC51rrnQKpnRyzGOk2xs0Ei7v+HkEZHqj5CW5fMsFpSjcMs9VwNKiAXPxxspRRC+w==
X-Received: by 2002:a05:6402:159a:b0:43b:ba6c:d0e2 with SMTP id
 c26-20020a056402159a00b0043bba6cd0e2mr8810492edv.418.1658413205937; 
 Thu, 21 Jul 2022 07:20:05 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 w12-20020a05640234cc00b0043bc5ee3ec4sm1105646edc.22.2022.07.21.07.20.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 07:20:04 -0700 (PDT)
Date: Thu, 21 Jul 2022 17:20:01 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20220721142001.twcmiyvhvlxmp24j@skbuf>
References: <20220708115624.rrjzjtidlhcqczjv@skbuf>
 <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
 <YtQosZV0exwyH6qo@shredder>
 <4500e01ec4e2f34a8bbb58ac9b657a40@kapio-technology.com>
 <20220721115935.5ctsbtoojtoxxubi@skbuf> <YtlUWGdgViyjF6MK@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YtlUWGdgViyjF6MK@shredder>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@kapio-technology.com, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On Thu, Jul 21, 2022 at 04:27:52PM +0300, Ido Schimmel wrote:
> I tried looking information about MAB online, but couldn't find
> detailed material that answers my questions, so my answers are based
> on what I believe is logical, which might be wrong.

I'm kind of in the same situation here.

> Currently, the bridge will forward packets to a locked entry which
> effectively means that an unauthorized host can cause the bridge to
> direct packets to it and sniff them. Yes, the host can't send any
> packets through the port (while locked) and can't overtake an existing
> (unlocked) FDB entry, but it still seems like an odd decision. IMO, the
> situation in mv88e6xxx is even worse because there an unauthorized host
> can cause packets to a certain DMAC to be blackholed via its zero-DPV
> entry.
> 
> Another (minor?) issue is that locked entries cannot roam between locked
> ports. Lets say that my user space MAB policy is to authorize MAC X if
> it appears behind one of the locked ports swp1-swp4. An unauthorized
> host behind locked port swp5 can generate packets with SMAC X,
> preventing the true owner of this MAC behind swp1 from ever being
> authorized.

In the mv88e6xxx offload implementation, the locked entries eventually
age out from time to time, practically giving the true owner of the MAC
address another chance every 5 minutes or so. In the pure software
implementation of locked FDB entries I'm not quite sure. It wouldn't
make much sense for the behavior to differ significantly though.

> It seems like the main purpose of these locked entries is to signal to
> user space the presence of a certain MAC behind a locked port, but they
> should not be able to affect packet forwarding in the bridge, unlike
> regular entries.

So essentially what you want is for br_handle_frame_finish() to treat
"dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);" as NULL if
test_bit(BR_FDB_LOCKED, &dst->flags) is true?

> Regarding a separate knob for MAB, I tend to agree we need it. Otherwise
> we cannot control which locked ports are able to populate the FDB with
> locked entries. I don't particularly like the fact that we overload an
> existing flag ("learning") for that. Any reason not to add an explicit
> flag ("mab")? At least with the current implementation, locked entries
> cannot roam between locked ports and cannot be refreshed, which differs
> from regular learning.

Well, assuming we model the software bridge closer to mv88e6xxx (where
locked FDB entries can roam after a certain time), does this change things?
In the software implementation I think it would make sense for them to
be able to roam right away (the age-out interval in mv88e6xxx is just a
compromise between responsiveness to roaming and resistance to DoS).
