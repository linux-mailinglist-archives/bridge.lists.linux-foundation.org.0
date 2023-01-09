Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A3E66258C
	for <lists.bridge@lfdr.de>; Mon,  9 Jan 2023 13:29:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D553060784;
	Mon,  9 Jan 2023 12:29:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D553060784
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=P/IIjdLg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sxk-QNA3ysjZ; Mon,  9 Jan 2023 12:29:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6949B60C33;
	Mon,  9 Jan 2023 12:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6949B60C33
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0CC60C007B;
	Mon,  9 Jan 2023 12:29:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3ABFC002D
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 12:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AE93F60C33
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 12:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE93F60C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8EhIQ9Fig6Tr for <bridge@lists.linux-foundation.org>;
 Mon,  9 Jan 2023 12:29:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9F8A60784
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9F8A60784
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 12:29:12 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id cf18so13322732ejb.5
 for <bridge@lists.linux-foundation.org>; Mon, 09 Jan 2023 04:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=crINwX8GG7oE7iuw+Z+Wz82V7aegfStJZU7gXgsc5Qc=;
 b=P/IIjdLg2bouOSQCv2Z03ysTzM8CtExWpKYVGm7RPVyMZ5cRimFFXovhV98OwKeeVh
 0vaMYwLL5eqTRXLPGb5jcal0YgpDAOPnzOarn3RsCTNO5G71T+I0vcyt+YoXMOml73wH
 L16uIdbW/mUIj2anFkl6Ww8a0UyZS0sRDliaK50B0PKFQGXP+H8rO612B5zsbLM5R5vS
 6OMJflVKJlUYYDqGVpOl5p/UVVqsqxV96XHkJM1QY8pQSU5XbHXPt9ahGS/1zZ5sSMHm
 0ptuSn6+n5+jCFD893QTFZsfZdBiYbY1HCYkDJhx3U600CgdfBJDnCa/untfcTWby19Z
 ucqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=crINwX8GG7oE7iuw+Z+Wz82V7aegfStJZU7gXgsc5Qc=;
 b=TKN647o43fYlUDvsm67KZlfzBwVGOD1bhq5aRUC1JbMbTttXL0Jh1eFQ8HnwSZ9ZcM
 TZFm2hTQN1ocPpDFXrCc56xT5LlV5L+wEg2x7vu/CedKPrFMgIL1qK0YKpNlSKgS/uXy
 4Es07QCHjeeR9JHnNB7AuzyquBYBH20Qqh0y1eCwcytrnHPBxOy82HZ5p3CLpb/+OOCK
 smhlsNHcUmZ91WbZNafVdgGYPFn3+u5r9MGXViAinmBFrZgiqzlJb+4v+EtN3zUOamrd
 Yr09ZsNtcDsRjs/eszFwZwzKsIDt0mbvC1LDF+7xs5zf9EXvQapZvc4EOB6qM/1WagZD
 ix2Q==
X-Gm-Message-State: AFqh2kpUIHqZm4gQxSGT3SL7Wgp0XvgezC3Lx57jLruyDqVhI8p5tSje
 ZdL/le/181O5nXFYI9BZctc=
X-Google-Smtp-Source: AMrXdXu+jN1Z5u4gvx/HeqOmEL5odydFz75WSlfwSrwQ+II0GJyIu1O/oM6oeG4mZPvmWt34FYk30g==
X-Received: by 2002:a17:906:8447:b0:7c4:fa17:7203 with SMTP id
 e7-20020a170906844700b007c4fa177203mr48361852ejy.63.1673267350944; 
 Mon, 09 Jan 2023 04:29:10 -0800 (PST)
Received: from skbuf ([188.27.185.38]) by smtp.gmail.com with ESMTPSA id
 18-20020a170906201200b00846734faa9asm3633540ejo.164.2023.01.09.04.29.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jan 2023 04:29:10 -0800 (PST)
Date: Mon, 9 Jan 2023 14:29:08 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20230109122908.dn2xlzlbcvfxgeii@skbuf>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-2-tobias@waldekranz.com>
 <Y7vK4T18pOZ9KAKE@shredder> <20230109100236.euq7iaaorqxrun7u@skbuf>
 <Y7v98s8lC1WUvsSO@shredder> <20230109115653.6yjijaj63n2v35lw@skbuf>
 <Y7wGct6VWmbuWs5F@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y7wGct6VWmbuWs5F@shredder>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org, Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v5 net-next 01/15] net: bridge: mst: Multiple
 Spanning Tree (MST) mode
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

On Mon, Jan 09, 2023 at 02:20:02PM +0200, Ido Schimmel wrote:
> On Mon, Jan 09, 2023 at 01:56:53PM +0200, Vladimir Oltean wrote:
> > On Mon, Jan 09, 2023 at 01:43:46PM +0200, Ido Schimmel wrote:
> > > OK, thanks for confirming. Will send a patch later this week if Tobias
> > > won't take care of it by then. First patch will probably be [1] to make
> > > sure we dump the correct MST state to user space. It will also make it
> > > easier to show the problem and validate the fix.
> > > 
> > > [1]
> > > diff --git a/net/bridge/br.c b/net/bridge/br.c
> > > index 4f5098d33a46..f02a1ad589de 100644
> > > --- a/net/bridge/br.c
> > > +++ b/net/bridge/br.c
> > > @@ -286,7 +286,7 @@ int br_boolopt_get(const struct net_bridge *br, enum br_boolopt_id opt)
> > >  	case BR_BOOLOPT_MCAST_VLAN_SNOOPING:
> > >  		return br_opt_get(br, BROPT_MCAST_VLAN_SNOOPING_ENABLED);
> > >  	case BR_BOOLOPT_MST_ENABLE:
> > > -		return br_opt_get(br, BROPT_MST_ENABLED);
> > > +		return br_mst_is_enabled(br);
> > 
> > Well, this did report the correct MST state despite the incorrect static
> > branch state, no? The users of br_mst_is_enabled(br) are broken, not
> > those of br_opt_get(br, BROPT_MST_ENABLED).
> 
> I should have said "actual"/"effective" instead of "correct". IMO, it's
> better to use the same conditional in the both the data and control
> paths to eliminate discrepancies. Without the patch, a user will see
> that MST is supposedly enabled when it is actually disabled in the data
> path.

The discussion is about to get philosophical, but I don't know if it's
necessary to make a bug more widespread before fixing it..
The br_mst_used is an optimization to avoid calling br_opt_get() when
surely MST is not enabled. There should be no discrepancy between using
and not using it, if the static branch works correctly (not the case here).
I would also expect that consolidation to be part of net-next though.

> > Anyway, I see there's a br_mst_is_enabled() and also a br_mst_enabled()?!
> > One is used in the fast path and the other in the slow path. They should
> > probably be merged, I guess. They both exist probably because somebody
> > thought that the "if (!netif_is_bridge_master(dev))" test is redundant
> > in the fast path.
> 
> The single user of br_mst_enabled() (DSA) is not affected by the bug
> (only the SW data path is), so I suggest making this consolidation in
> net-next after the bug is fixed. OK?

Yes, net-next, sure.
