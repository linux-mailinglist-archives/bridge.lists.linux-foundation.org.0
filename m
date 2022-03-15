Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 001FE4DA559
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 23:27:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08B3D6068F;
	Tue, 15 Mar 2022 22:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l4uCEcbEomS6; Tue, 15 Mar 2022 22:27:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AA7FC60B1A;
	Tue, 15 Mar 2022 22:27:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63BE2C0033;
	Tue, 15 Mar 2022 22:27:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9319C0012
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C28766068F
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wi5d1_51C9_J for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 22:27:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6753060B79
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 22:27:04 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id c15so804830ljr.9
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 15:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=1eFaiU5+NXOZ2eF/q2c9hS91JEU83jBZdMPIUzAUG/M=;
 b=W9eHnbhnxZGkzFj4ctqYZx2unDRv0f6pILZnVE29yrAktO5wfV20/6Q5AYy2opt8kW
 mEsUioTGfGdUFxKKKJLC1YaxkOCTeW2Z1Sx0akQKquuDbdLVis6ZPKyWY5GwYnpzo4xP
 Jur81GGN4sb0B+FWmLvdm0DkYueYkSa2YrKABgXs+59DS3pNashgTBY1HOaB13LLpgow
 Ofn21eFrtSHyBy/7w3XlI0057PBHN1Rv0myExHyAZlaWtktSbhS3OFHBvG20IDG2LW6c
 jBVSKdDoRX5hO9X9MM+7RyHzzIgxbE7dObi9QuznBILzRbBqUSR80QmgHH1DaLxJG3n6
 PThA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=1eFaiU5+NXOZ2eF/q2c9hS91JEU83jBZdMPIUzAUG/M=;
 b=bPnRv4adj58LguGelqYbFyVJTPwSOXvFEUTU/nNLU5jryDGb+L5NjpZga1+nBoY7gD
 LGL5rck6ffIBKPyoiS5hiDQNkGmn9tw9ucJv1FE6p59uxsI+zwwM/CAE2Ac/MsxH0ge4
 NaL120QV0vAW9rNqG6HqI/2DbChDeLVr+UqWqzGSXG8zdH63M0bVRFpftOb7OQDqCRVj
 iY22L9KlCN4gtkO6GjDN7HMA+/SThtCHrFXGYeopmN/K3S/qV4JbPYSxYgrCCm/4vY20
 7u5UBE33PkRHd4a4mcBQiyHbSR25M/7iUqY3mJGOZvllT0n9h0Gbw5pDYu6tBc5W9iOt
 KBQg==
X-Gm-Message-State: AOAM531kMwxsgPtETqyNIzBJQ4IZvBsNJTgLtrkJUT4MYUVYIvzYFt4a
 qy1sNg89+82xLiQpv2uUQZCSlsEmtbDBePxk
X-Google-Smtp-Source: ABdhPJyqfX4MOlHUD1u/2Ymk1nux/6ggwGs0+zmsR8ejZc2pNkrCvxg3TIt1AV07eugD8SX7TSBlKg==
X-Received: by 2002:a05:651c:160b:b0:247:f955:1b18 with SMTP id
 f11-20020a05651c160b00b00247f9551b18mr18676245ljq.427.1647383222035; 
 Tue, 15 Mar 2022 15:27:02 -0700 (PDT)
Received: from wkz-x280 (h-212-85-90-115.A259.priv.bahnhof.se. [212.85.90.115])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a056512054100b0044847b32426sm19185lfl.156.2022.03.15.15.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 15:27:01 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220315163349.k2rmfdzrd3jvzbor@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-10-tobias@waldekranz.com>
 <20220315163349.k2rmfdzrd3jvzbor@skbuf>
Date: Tue, 15 Mar 2022 23:26:59 +0100
Message-ID: <87ee32lumk.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 09/15] net: dsa: Never offload FDB
 entries on standalone ports
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

On Tue, Mar 15, 2022 at 18:33, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 15, 2022 at 01:25:37AM +0100, Tobias Waldekranz wrote:
>> If a port joins a bridge that it can't offload, it will fallback to
>> standalone mode and software bridging. In this case, we never want to
>> offload any FDB entries to hardware either.
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>
> When you resend, please send this patch separately, unless something
> breaks really ugly with your MST series in place.

Sure. I found this while testing the software fallback. It prevents a
segfault in dsa_port_bridge_host_fdb_add, which (rightly, I think)
assumes that dp->bridge is valid. I feel like this should have a Fixes:
tag, but I'm not sure which commit to blame. Any suggestions?

>>  net/dsa/slave.c | 3 +++
>>  1 file changed, 3 insertions(+)
>> 
>> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
>> index a61a7c54af20..647adee97f7f 100644
>> --- a/net/dsa/slave.c
>> +++ b/net/dsa/slave.c
>> @@ -2624,6 +2624,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>>  	if (ctx && ctx != dp)
>>  		return 0;
>>  
>> +	if (!dp->bridge)
>> +		return 0;
>> +
>>  	if (switchdev_fdb_is_dynamically_learned(fdb_info)) {
>>  		if (dsa_port_offloads_bridge_port(dp, orig_dev))
>>  			return 0;
>> -- 
>> 2.25.1
>> 
