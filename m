Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C78569335
	for <lists.bridge@lfdr.de>; Wed,  6 Jul 2022 22:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D5614037E;
	Wed,  6 Jul 2022 20:21:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D5614037E
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=gXNpFpMr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EnSTVZ6RIZh; Wed,  6 Jul 2022 20:21:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BA65B40C3F;
	Wed,  6 Jul 2022 20:21:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA65B40C3F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5D304C0077;
	Wed,  6 Jul 2022 20:21:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 68413C002D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 20:21:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 41E7541822
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 20:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41E7541822
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=gXNpFpMr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qqk8BP0zzr5j for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jul 2022 20:21:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0311641514
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0311641514
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 20:21:34 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id sb34so28921802ejc.11
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 13:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IVs1PzHuez3hQcAirS0d2q10S8U/unbnwRNkqW7KJhY=;
 b=gXNpFpMrLWRQHhbXM/UxJAvfsUhf3EcI6SJ2wm46oGxsL9gYfbTnoCCdys1ny06Vvq
 mUxJzLKrt76BMDGd/vHIBW/bniKp+lcEBPmcmnJcAySrOpq4OTBm4GekEN1euq+MIaI+
 /zFrPtM92Tnn2vD5fByJZLro7HK6AJF8d4EDvPzssGJ3c4CVTBMtjzJ1IXXtgXLisAss
 3p+0qDB/dTVPiS4hdVlN7qafL9A25lQB8o6ET4+Mmwoh2M+CJxOCMo6Dl4+khWB175We
 Myhn9VYOu0c6dKHfGKJMzjH3D66vCA71Qxj3aV7ne/exUKDwJ/2UH8Bqru3VhnKpKQ6t
 5o5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IVs1PzHuez3hQcAirS0d2q10S8U/unbnwRNkqW7KJhY=;
 b=alUWw7y99W2q8ED8q2GGxgVUlZwndA7zzsFWnQbArrBBhyr/JYoRG1woYbmSB/P4Ha
 vYxcwhI4UFtFViC4w3pWe3ZixOqxC7Wolt4VteZ6tQMgYE2DrM6HBXEnsBzF/Ce8mJI+
 97pD3byJeHzdVoJ0eHzqbITBBBvZ2AZl7FwaqAvwHv4fBawCSl9teGRR8cIYJaTEyraF
 tywq+2IoAdIrrn3ZJmwyWwlAS0EdsKM98L4bs49lz9HXHpkBCFpl4xZI+GyhhEfpx+tc
 IY7RXsDeIDE5ovH0es5uIR7+cQftmE884Ym6Oiow+Ed5oNd+wvKTNQU7cugKMcnVatKx
 kl1g==
X-Gm-Message-State: AJIora8I4bnjpr3JqgSOk9t70NOIPaJMdccT5LLM9xPfXXTK7YfRDdWW
 j57Cgpi2JkBsuz9V2IfSd6g=
X-Google-Smtp-Source: AGRyM1usqPuiPgZ/X2EoQWVd4/tGjc7aIU1ds6yevsv1Qdo9wuRX+oI0PmAyvVtvV7TPRq5uSwSAWA==
X-Received: by 2002:a17:907:9710:b0:726:bdf6:edee with SMTP id
 jg16-20020a170907971000b00726bdf6edeemr40857024ejc.48.1657138893048; 
 Wed, 06 Jul 2022 13:21:33 -0700 (PDT)
Received: from skbuf ([188.26.185.61]) by smtp.gmail.com with ESMTPSA id
 p23-20020a1709061b5700b0070e3f58ed5csm17653730ejg.48.2022.07.06.13.21.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jul 2022 13:21:32 -0700 (PDT)
Date: Wed, 6 Jul 2022 23:21:30 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220706202130.ehzxnnqnduaq3rmt@skbuf>
References: <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
 <86zgj6oqa9.fsf@gmail.com>
 <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
 <86fskyggdo.fsf@gmail.com>
 <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
 <86v8tu7za3.fsf@gmail.com>
 <4bf1c80d-0f18-f444-3005-59a45797bcfd@blackwall.org>
 <20220706181316.r5l5rzjysxow2j7l@skbuf>
 <7cf30a3e-a562-d582-4391-072a2c98ab05@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7cf30a3e-a562-d582-4391-072a2c98ab05@blackwall.org>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Hans Schultz <schultz.hans@gmail.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On Wed, Jul 06, 2022 at 10:38:04PM +0300, Nikolay Aleksandrov wrote:
> I don't think that is new or surprising, if there isn't anything to control the
> device resources you'll get there. You don't really need to write any new programs
> you can easily do it with mausezahn. I have tests that add over 10 million fdbs on
> devices for a few seconds.

Of course it isn't new, but that doesn't make the situation in any way better,
quite the opposite...

> The point is it's not the bridge's task to limit memory consumption or to watch for resource
> management. You can limit new entries from the device driver (in case of swdev learning) or
> you can use a daemon to watch the number of entries and disable learning. There are many
> different ways to avoid this. We've discussed it before and I don't mind adding a hard fdb
> per-port limit in the bridge as long as it's done properly. We've also discussed LRU and similar
> algorithms for fdb learning and eviction. But any hardcoded limits or limits that can break
> current default use cases are unacceptable, they must be opt-in.

I don't think you can really say that it's not the bridge's task to
limit memory consumption when what it does is essentially allocate
memory from untrusted and unbounded user input, in kernel softirq
context.

That's in fact the problem, the kernel OOM killer will kick in, but
there will be no process to kill. This is why the kernel deadlocks on
memory and dies.

Maybe where our expectations differ is that I believe that a Linux
bridge shouldn't need gazillions of tweaks to not kill the kernel?
There are many devices in production using a bridge without such
configuration, you can't just make it opt-in.

Of course, performance under heavy stress is a separate concern, and
maybe user space monitoring would be a better idea for that.

I know you changed jobs, but did Cumulus Linux have an application to
monitor and limit the FDB entry count? Is there some standard
application which does this somewhere, or does everybody roll their own?

Anyway, limiting FDB entry count from user space is still theoretically
different from not dying. If you need to schedule a task to dispose of
the weight while the ship is sinking from softirq context, you may never
get to actually schedule that task in time. AFAIK the bridge UAPI doesn't
expose a pre-programmed limit, so what needs to be done is for user
space to manually delete entries until the count falls below the limit.
