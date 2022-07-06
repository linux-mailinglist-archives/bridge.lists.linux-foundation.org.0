Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5355689F5
	for <lists.bridge@lfdr.de>; Wed,  6 Jul 2022 15:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 361DA60AE0;
	Wed,  6 Jul 2022 13:48:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 361DA60AE0
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=GmdcHEVe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k4J4weHbB6Gm; Wed,  6 Jul 2022 13:48:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6194C60FE3;
	Wed,  6 Jul 2022 13:48:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6194C60FE3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 15D0FC0077;
	Wed,  6 Jul 2022 13:48:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A4CABC002D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 13:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FAD682FA9
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 13:48:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FAD682FA9
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=GmdcHEVe
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXubkmEEwIPq for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jul 2022 13:48:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 256D081902
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 256D081902
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 13:48:29 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id d16so15844690wrv.10
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 06:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7VGDIlKV6gAV8St0jIFraWnG2EvF6VYrYLOYj9aX/Sc=;
 b=GmdcHEVeVUWW4yGaLtIyHZprjnISw5pW33LwCwJJ7/fDA6Hcfxby9OeEN4idkGEUJr
 tlORqJvsztOQN74ymQ3E4sWlPqW/6bsqHfxN0YB8ADgv1BjiKCRCjYDOh7lZQBb3Tgl5
 BdUozqnyBMsdWXGwJFWBmb35kvsmDF2WLkvQp9mRsWZPmu6EbUWcypm8pcp2H715FnU4
 ipRQuQXENffTeeb6WWoDToEU9RkLs53PtRT5L1YrX7g0bef34vYKUzk1UcPVf5OSAeT5
 XYbuV7KUIBSkcnstqa0uuwHszYv7gMD72sraYPrXUBZl/08SljwdSVHfeHp5mJ+welFO
 bGEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7VGDIlKV6gAV8St0jIFraWnG2EvF6VYrYLOYj9aX/Sc=;
 b=ehJIDOWAvcNdF8d0kUFUGCuVYp6POK1cNQEqT3w8sK9uWpAeXVyT7F/C3Dyib6sLce
 OfjiFpIpRrv+kASRqyn14GRW7gkrHZg49eKq/Gd6wk+9hbDpsHNDmMavVk/3DlRyPPL4
 zS1UAvJSVBh1ljsHBSfFtyG634KuKFY2WO5kLmvy+BjxO6Yisrvdem1Y9CATDfKO3+R1
 G2zwWQ5MX3uz3KSLP2BF70tym6Ameotkd7Jywww1mi2AqNIViE5k08Cgr09kWd3L/nSr
 WMZy+dfHoEZuvpRCzYTEHC3iWPP3VG0dS3cvoEjNm2ImO86gWI23U/AIUWtg7pq5Potg
 mjDA==
X-Gm-Message-State: AJIora+yZuC1sXptWob7+fUxgaiT89cSVghxOFiZ73qJlj/Q4li3rVQp
 tLhNnEVuk8OT4jmlDC3CsxiZONGgcu9ZMLoyyyg=
X-Google-Smtp-Source: AGRyM1ts1iVFzqxNpdFOtNBXP9pYfOs+b0mF015rNdoOcHmF9GTVipUoZ3vq1ks20WVLwoAkcEDLb99UfUxDajaENIY=
X-Received: by 2002:a5d:658d:0:b0:21d:6e90:c2ed with SMTP id
 q13-20020a5d658d000000b0021d6e90c2edmr11899137wru.113.1657115307223; Wed, 06
 Jul 2022 06:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
 <20220627180557.xnxud7d6ol22lexb@skbuf>
 <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
 <CAKUejP5u9rrH8tODODG0a1PLXfLhk7NLe5LUYkefkbs15uU=BQ@mail.gmail.com>
 <20220706132834.rdw7mmpbwt55kt4r@skbuf>
In-Reply-To: <20220706132834.rdw7mmpbwt55kt4r@skbuf>
From: Hans S <schultz.hans@gmail.com>
Date: Wed, 6 Jul 2022 15:48:16 +0200
Message-ID: <CAKUejP7DjCoEjyzGWs4ZQF3_gfy6tBhCYs+H9Ja7hXcFw09qww@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, Jul 6, 2022 at 3:28 PM Vladimir Oltean <olteanv@gmail.com> wrote:
>
> On Tue, Jul 05, 2022 at 05:05:52PM +0200, Hans S wrote:
> > Hi, does anybody know what it going on with this variable?
> > struct dsa_port *dp ->ageing_time;
> >
> > I experience that it changes value like a factor ~10 at times.
>
> Could you be a bit more specific? Are you talking about STP Topology
> Change Notification BPDUs, which trigger this code path?
>
> diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
> index 7d27b2e6038f..9b25bc2dcb3e 100644
> --- a/net/bridge/br_stp.c
> +++ b/net/bridge/br_stp.c
> @@ -671,10 +671,10 @@ void __br_set_topology_change(struct net_bridge *br, unsigned char val)
>
>                 if (val) {
>                         t = 2 * br->forward_delay;
> -                       br_debug(br, "decreasing ageing time to %lu\n", t);
> +                       br_info(br, "decreasing ageing time to %lu\n", t);
>                 } else {
>                         t = br->bridge_ageing_time;
> -                       br_debug(br, "restoring ageing time to %lu\n", t);
> +                       br_info(br, "restoring ageing time to %lu\n", t);
>                 }
>
>                 err = __set_ageing_time(br->dev, t);
>
> Coincidentally the default values of 2 * br->forward_delay and br->bridge_ageing_time
> are 1 order of magnitude apart from each other.
>
> [  139.998310] br0: topology change detected, propagating
> [  140.003490] br0: decreasing ageing time to 3000
> [  175.193054] br0: restoring ageing time to 30000
>
> What's the problem anyway?

It might be a topology change as you indicate, though I am not sure.
So I am not using that variable any more for determining the ageing
time for the locked FDB entries, but instead I have made a function to
read the time from the chip instead.

The problem with that, I have mentioned in my latest reply to the
mac-auth patch set...
