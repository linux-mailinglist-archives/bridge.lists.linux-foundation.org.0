Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5903731E4
	for <lists.bridge@lfdr.de>; Tue,  4 May 2021 23:25:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B163607A7;
	Tue,  4 May 2021 21:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFJi9m9WhO7t; Tue,  4 May 2021 21:25:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3906360791;
	Tue,  4 May 2021 21:25:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EEA25C001C;
	Tue,  4 May 2021 21:24:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1470AC0001
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 21:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F61083D65
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 21:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tLGFzSGc3mn for <bridge@lists.linux-foundation.org>;
 Tue,  4 May 2021 21:24:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23C6C83D63
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 21:24:57 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id h4so7799112lfv.0
 for <bridge@lists.linux-foundation.org>; Tue, 04 May 2021 14:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=uliylMPA3scQqPaauQbVrIOixvG300bg8trmMivqpf0=;
 b=KFS/nGi1eolFwtYT6NELDRAushYNsu4vIKv4FZrf5JKt3IoYJpFAKmQ5N2iEM8luNG
 ceizYfDegDgvfioz0FPWRlwC+BT5vAMxYunFnXn2LhPKuPlM1tYcMOeR0dZjdQe8Z15u
 gy7rBvCZNqyYja5VimuxEyBvGWat3pHV3Jf1IRCYOmiAE9bRmKijSHtakap5UPWv2vau
 38Wy4IkGaSyt1i4MVG4A0ZWLai8LpQAujiWkwux58NTsnUu8hy3zNs0DetSbMUXm1sLR
 LTVd6+KiS3JofDeIFk1c+wTrLdb8XNBPo0W5ZwqHnmXSXmrD5LU91i23TYmoWNw1HulN
 lp6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=uliylMPA3scQqPaauQbVrIOixvG300bg8trmMivqpf0=;
 b=HbVmvKS0H3k4K7IRvQzN1DlGps3DLM/ruHw5dOtz3ovqJ1irMDDgzWZmOnzMKgpEtw
 P6D/fEXJE5Gydf2tqYxLxyFVaC5h3zqLgqoQ6eixtdL3C37/48+fUFzisAqYrl6jnu7o
 MC9D032xuWMKMvNSfyXz2fRO8szzxw3PdrhShiINwuewqvOJe0UERyiRRlcetZfkPUMY
 pBXMv2YSlTpCyJ8Md/fFfLdJfOylrqE/NupnRap7G34eM6cyHE1G97776N1fgckISFRQ
 RYGsHWb/hC8SQhizDvrDch8chqDH8lhYSr4gdFV5dF1zENzXOIYY36yVjA5Mb1O/VBBK
 G8Bg==
X-Gm-Message-State: AOAM532BshVHeVmVA+UuKxlsgHZSOhW774v3LNziLDvJjgTj4uEzpLIW
 wbNNJsEkYN7E+P2dOe65hTrlIPEKIBiuhw==
X-Google-Smtp-Source: ABdhPJwOz299VrftPbCO7qLkDc3Ng/aTngBk9v/lnjlgXm+ouCEQ5CFF+JF2+FXdX1vkFuu+ce2pMw==
X-Received: by 2002:a05:6512:693:: with SMTP id
 t19mr6651918lfe.91.1620163494568; 
 Tue, 04 May 2021 14:24:54 -0700 (PDT)
Received: from wkz-x280 (h-90-88.A259.priv.bahnhof.se. [212.85.90.88])
 by smtp.gmail.com with ESMTPSA id i7sm361703lfv.126.2021.05.04.14.24.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 14:24:53 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Andrew Lunn <andrew@lunn.ch>
In-Reply-To: <YJGvkJBKPj2WloXf@lunn.ch>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf> <878s4uo8xc.fsf@waldekranz.com>
 <20210504152106.oppawchuruapg4sb@skbuf> <874kfintzh.fsf@waldekranz.com>
 <YJGvkJBKPj2WloXf@lunn.ch>
Date: Tue, 04 May 2021 23:24:52 +0200
Message-ID: <871ramnqe3.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: f.fainelli@gmail.com, jiri@resnulli.us, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, vivien.didelot@gmail.com, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 6/9] net: dsa: Forward offloading
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

On Tue, May 04, 2021 at 22:33, Andrew Lunn <andrew@lunn.ch> wrote:
>> There is really no need to recompute the static parts of the tags on
>> each skb. It would mean moving some knowledge of the tagging format to
>> the driver. But that boundary is pretty artificial for
>> mv88e6xxx. tag_dsa has no use outside of mv88e6xxx, and mv88e6xxx does
>> not work with any other tagger. I suppose you could even move the whole
>> tagger to drivers/net/dsa/mv88e6xxx/?
>> 
>> What do you think?
>> 
>> Andrew?
>
> We have resisted this before.
>
> What information do you actually need to share between the tagger and
> the driver?

So far:

- Trunk/LAG ID to netdev mappings (this is stored on the dst now, but I
  think I have seen the light and agree with Vladimir that it really has
  no business there).

- DSA dev/port to bridge netdev mappings for the forwarding offloading
  in this RFC (or preferably the actual tag templates to use on egress
  since that would probably give you better performance)

In the future:

- Completions for in-flight remote management operations.

- FlowID to TC rule mappings (from the "Switch Egress header" when we
  enable that)

- In-band signaling between firmware running on the IMP and the driver
  for things like MRP and CFM offloading.

> Both tag_lan9303.c and tag_ocelot_8021q.c do reference
> their switch driver data structures, so some sharing is allowed. But
> please try to keep the surface areas down.

If you have a surface area keep it small, yes, agreed. I guess my
question is more why we should have any surface area at all? What do we
gain by the tagger/driver separation in the case of mv88e6xxx?

>        Andrew
