Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2203B2EC29D
	for <lists.bridge@lfdr.de>; Wed,  6 Jan 2021 18:43:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9313A204A9;
	Wed,  6 Jan 2021 17:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Lc2pQpXhBzi; Wed,  6 Jan 2021 17:43:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id AC57F273AC;
	Wed,  6 Jan 2021 17:43:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 99B28C013A;
	Wed,  6 Jan 2021 17:43:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9A743C013A
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 17:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F2E28735E
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 17:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIuP2B9Tm0x6 for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jan 2021 17:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 683CB8735C
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 17:43:34 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id x12so1888447plr.10
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jan 2021 09:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6GwxubxS6M2rVdSgX+DHIBvWrJ5pqmktudfc15+FH+Q=;
 b=gTEfdDvs5CXNu71g+z2O54TZXNuTcOcHLLtAuiADXCFi6FBKdM2zfMj+zKI/7c83HK
 S0uHH0Yeeg5hMlgPew3olFE5odQjTZZtK/Y75VB0OZKD9CGYD6ZB1blPvqM3zmd8ZpTq
 hgRF/uQbaPv4EryTncN6vXzqB0n0SKakqPUe1yaQkfMRZvw7qe3xj3tGOHHSuvqlO1bD
 KqDcsLMFS+UaeKpQ9HychKQ+TLrKnupDoTv04mEUAOjjpbof2lY/8Bd99v1TrUeMKCsE
 36TY6OTH5NjN00njcXXlfB729bF21cixhnI6b+HFAJ7eBhjRrlVwXhKUXWQYsMUqJ4WU
 e0NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6GwxubxS6M2rVdSgX+DHIBvWrJ5pqmktudfc15+FH+Q=;
 b=X6NAsICxSK0YcwNFx8tLJwGuOTV3L+OXDqzj91qp62JCxLoEHppIJrbG4KPDVtfPg1
 qsgTPVazeNY3pufbErWdfXuluvjUHVapGLyUgoGTAp4TU3l+QLM2Ri7paeRpuzDRsoJ2
 rOWBMPsGinQYhzv7C3p32OQouXxGjSeutc5H2hwLMsrrbDFMnbwlaEo3Xjt78oqO6dzW
 Xp5z5X4Lm9B05jLSd/Y7FscnOQMBvB/sgPjvTWPI1MePnZrba7dpAdbYNfsQS/PylG7n
 jtQ4jETYMqgLCuZ1Bl/BWSLktOnb6TsJKJOlXAu0GVsgVuU5a7zKoTKPxRtEap9ox0MQ
 2KeQ==
X-Gm-Message-State: AOAM533ao6HO0GTl4T4FUQW6gvK/1BTCZaHe46RBjzam4dsGQJu2agM0
 5x03mZIl5J3g68SJq6VDo+c=
X-Google-Smtp-Source: ABdhPJyFlhK21CF0imAwOsVX3oV+27TX9303b3/IjyCRP6Z/iOHEmm27idrCWw9ZrrAfWsmeRUM0zA==
X-Received: by 2002:a17:90b:1a86:: with SMTP id
 ng6mr5371885pjb.12.1609955013895; 
 Wed, 06 Jan 2021 09:43:33 -0800 (PST)
Received: from [10.67.48.230] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id mj5sm2885270pjb.20.2021.01.06.09.43.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Jan 2021 09:43:33 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20210106095136.224739-1-olteanv@gmail.com>
 <20210106095136.224739-2-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <f07659e1-e513-cecd-c6e4-90a2bf45d8bf@gmail.com>
Date: Wed, 6 Jan 2021 09:43:25 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210106095136.224739-2-olteanv@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, UNGLinuxDriver@microchip.com,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 1/7] net: bridge: notify switchdev
 of disappearance of old FDB entry upon migration
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

On 1/6/21 1:51 AM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> Currently the bridge emits atomic switchdev notifications for
> dynamically learnt FDB entries. Monitoring these notifications works
> wonders for switchdev drivers that want to keep their hardware FDB in
> sync with the bridge's FDB.
> 
> For example station A wants to talk to station B in the diagram below,
> and we are concerned with the behavior of the bridge on the DUT device:
> 
>                    DUT
>  +-------------------------------------+
>  |                 br0                 |
>  | +------+ +------+ +------+ +------+ |
>  | |      | |      | |      | |      | |
>  | | swp0 | | swp1 | | swp2 | | eth0 | |
>  +-------------------------------------+
>       |        |                  |
>   Station A    |                  |
>                |                  |
>          +--+------+--+    +--+------+--+
>          |  |      |  |    |  |      |  |
>          |  | swp0 |  |    |  | swp0 |  |
>  Another |  +------+  |    |  +------+  | Another
>   switch |     br0    |    |     br0    | switch
>          |  +------+  |    |  +------+  |
>          |  |      |  |    |  |      |  |
>          |  | swp1 |  |    |  | swp1 |  |
>          +--+------+--+    +--+------+--+
>                                   |
>                               Station B
> 
> Interfaces swp0, swp1, swp2 are handled by a switchdev driver that has
> the following property: frames injected from its control interface bypass
> the internal address analyzer logic, and therefore, this hardware does
> not learn from the source address of packets transmitted by the network
> stack through it. So, since bridging between eth0 (where Station B is
> attached) and swp0 (where Station A is attached) is done in software,
> the switchdev hardware will never learn the source address of Station B.
> So the traffic towards that destination will be treated as unknown, i.e.
> flooded.
> 
> This is where the bridge notifications come in handy. When br0 on the
> DUT sees frames with Station B's MAC address on eth0, the switchdev
> driver gets these notifications and can install a rule to send frames
> towards Station B's address that are incoming from swp0, swp1, swp2,
> only towards the control interface. This is all switchdev driver private
> business, which the notification makes possible.
> 
> All is fine until someone unplugs Station B's cable and moves it to the
> other switch:
> 
>                    DUT
>  +-------------------------------------+
>  |                 br0                 |
>  | +------+ +------+ +------+ +------+ |
>  | |      | |      | |      | |      | |
>  | | swp0 | | swp1 | | swp2 | | eth0 | |
>  +-------------------------------------+
>       |        |                  |
>   Station A    |                  |
>                |                  |
>          +--+------+--+    +--+------+--+
>          |  |      |  |    |  |      |  |
>          |  | swp0 |  |    |  | swp0 |  |
>  Another |  +------+  |    |  +------+  | Another
>   switch |     br0    |    |     br0    | switch
>          |  +------+  |    |  +------+  |
>          |  |      |  |    |  |      |  |
>          |  | swp1 |  |    |  | swp1 |  |
>          +--+------+--+    +--+------+--+
>                |
>            Station B
> 
> Luckily for the use cases we care about, Station B is noisy enough that
> the DUT hears it (on swp1 this time). swp1 receives the frames and
> delivers them to the bridge, who enters the unlikely path in br_fdb_update
> of updating an existing entry. It moves the entry in the software bridge
> to swp1 and emits an addition notification towards that.
> 
> As far as the switchdev driver is concerned, all that it needs to ensure
> is that traffic between Station A and Station B is not forever broken.
> If it does nothing, then the stale rule to send frames for Station B
> towards the control interface remains in place. But Station B is no
> longer reachable via the control interface, but via a port that can
> offload the bridge port learning attribute. It's just that the port is
> prevented from learning this address, since the rule overrides FDB
> updates. So the rule needs to go. The question is via what mechanism.
> 
> It sure would be possible for this switchdev driver to keep track of all
> addresses which are sent to the control interface, and then also listen
> for bridge notifier events on its own ports, searching for the ones that
> have a MAC address which was previously sent to the control interface.
> But this is cumbersome and inefficient. Instead, with one small change,
> the bridge could notify of the address deletion from the old port, in a
> symmetrical manner with how it did for the insertion. Then the switchdev
> driver would not be required to monitor learn/forget events for its own
> ports. It could just delete the rule towards the control interface upon
> bridge entry migration. This would make hardware address learning be
> possible again. Then it would take a few more packets until the hardware
> and software FDB would be in sync again.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
