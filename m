Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBED568965
	for <lists.bridge@lfdr.de>; Wed,  6 Jul 2022 15:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D219D40436;
	Wed,  6 Jul 2022 13:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D219D40436
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=I251BBbK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKbFrKxmMIyP; Wed,  6 Jul 2022 13:28:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 438C540148;
	Wed,  6 Jul 2022 13:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 438C540148
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D94D5C0077;
	Wed,  6 Jul 2022 13:28:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8FF87C002D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 13:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5603C60FE6
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 13:28:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5603C60FE6
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=I251BBbK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 15VaoGzDbp13 for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jul 2022 13:28:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D30560C08
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D30560C08
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 13:28:39 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id v12so6665266edc.10
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 06:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rb7S6vKA6tSNNVoIcDf+GZRHLmeFhGnBw8uqyS4EvKE=;
 b=I251BBbKoBayGE5g2oWlZqS5LjG0YRgMzPCPUIWwahKxLJoAdPFxy12b6BrIdZayZA
 cpMMVYpgRHwelBAjYmtk5IrxLZ0r3LqsKVGxJjSU9ClhUJNetNeWjCjOEETfHUaoekoD
 vLIX+z+dwPXXnAWJE+qwbR3+rDxXkDn2UQm2Dkho6gMTPtae76H83ll4Cgti5jGge+uO
 ridSd998Opy2oB9AEcUzA+Kextvgi4A7vkHdpVdxgHAmMtDeS4329C/Wi6o7waEU92/g
 LuiCL2vz18o4hsXUNw47Oa1UA88sa92FUjUkEvTqcZL6wvzqSSe+aAbAupeQKqpvEpNe
 bYZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rb7S6vKA6tSNNVoIcDf+GZRHLmeFhGnBw8uqyS4EvKE=;
 b=DTYh+XxD6LBx29nJUqgMLL0OAxvkKWU0ZLVj9YH3C1V0YujoTqa2MeLPtwtvwAcjgQ
 qO5t4QzJ61X7IUCciDblCP9OHVHmVYDPA5NC/aTfYgU2Hdy/5tUWqjrT37K0rPqCZlfm
 x8sAAzTf02TUy8jiCF9kIG6Um5KEJz7YeUoL0cbRfNomQ1zSHG26u5v9wXpCmkewHwVb
 rVZ8WOz0UneAMLVPll+qTN6avNRPPvenufn3fCueJwUKTtuG8QUBUd8wQwxVYM0Ja7aS
 M5MJgARdhj/hOfTZJ+JDCPyxQemO8t7MzCRq5cB4jDq1gZwBWjvAOmnltgtbPQN96Pkm
 dwKQ==
X-Gm-Message-State: AJIora9o3uiFllS5fatuteIJ78UAo2j2ipd9D7Su+0rLqpQjE5B9blrG
 X1etNjjdg5p5Tag7Yc5YfTo=
X-Google-Smtp-Source: AGRyM1vfGSecteEGTYtINQy7ODV05OZ4g3oaZSTycPNxzFhVdRo4kFcUnGTVMurNcH7m3aNpdGQEaw==
X-Received: by 2002:a05:6402:5388:b0:435:71b:5d44 with SMTP id
 ew8-20020a056402538800b00435071b5d44mr53113203edb.364.1657114117386; 
 Wed, 06 Jul 2022 06:28:37 -0700 (PDT)
Received: from skbuf ([188.26.185.61]) by smtp.gmail.com with ESMTPSA id
 jw14-20020a170906e94e00b007263481a43fsm17077389ejb.81.2022.07.06.06.28.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jul 2022 06:28:36 -0700 (PDT)
Date: Wed, 6 Jul 2022 16:28:34 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans S <schultz.hans@gmail.com>
Message-ID: <20220706132834.rdw7mmpbwt55kt4r@skbuf>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
 <20220627180557.xnxud7d6ol22lexb@skbuf>
 <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
 <CAKUejP5u9rrH8tODODG0a1PLXfLhk7NLe5LUYkefkbs15uU=BQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKUejP5u9rrH8tODODG0a1PLXfLhk7NLe5LUYkefkbs15uU=BQ@mail.gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH V3 net-next 3/4] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

On Tue, Jul 05, 2022 at 05:05:52PM +0200, Hans S wrote:
> Hi, does anybody know what it going on with this variable?
> struct dsa_port *dp ->ageing_time;
> 
> I experience that it changes value like a factor ~10 at times.

Could you be a bit more specific? Are you talking about STP Topology
Change Notification BPDUs, which trigger this code path?

diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
index 7d27b2e6038f..9b25bc2dcb3e 100644
--- a/net/bridge/br_stp.c
+++ b/net/bridge/br_stp.c
@@ -671,10 +671,10 @@ void __br_set_topology_change(struct net_bridge *br, unsigned char val)
 
 		if (val) {
 			t = 2 * br->forward_delay;
-			br_debug(br, "decreasing ageing time to %lu\n", t);
+			br_info(br, "decreasing ageing time to %lu\n", t);
 		} else {
 			t = br->bridge_ageing_time;
-			br_debug(br, "restoring ageing time to %lu\n", t);
+			br_info(br, "restoring ageing time to %lu\n", t);
 		}
 
 		err = __set_ageing_time(br->dev, t);

Coincidentally the default values of 2 * br->forward_delay and br->bridge_ageing_time
are 1 order of magnitude apart from each other.

[  139.998310] br0: topology change detected, propagating
[  140.003490] br0: decreasing ageing time to 3000
[  175.193054] br0: restoring ageing time to 30000

What's the problem anyway?
