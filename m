Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4060B4D4E0F
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 17:05:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD9B140A7C;
	Thu, 10 Mar 2022 16:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htsa6gRizAk1; Thu, 10 Mar 2022 16:05:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 48A4B4040C;
	Thu, 10 Mar 2022 16:05:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0A073C0073;
	Thu, 10 Mar 2022 16:05:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C34D3C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2B0A41936
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:05:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7-RKA5SlSbIH for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 16:05:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC0D141934
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 16:05:46 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id g20so7596079edw.6
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 08:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QMLpysDwZRJXsNTpOkpDQ0qqZGLPweA1Fp1BJeeZZvI=;
 b=oHPETXL5JN1QV7aFH3+N2eY8CWrcsu+R0DVVt2ZByX/8mu3OLyaeO3eZsUX4BRYU5U
 s41dt5O7HaBXuXjQ1sVNfNGIgc9V9Tkv66jutuNQvQoqm0rRNNCcwcGV1byYwLOuS+XN
 JCLSMsVh/p9p6V1GN6XYnM2K+shhher1ibq8AHXVcpNay8a31yg34Bw6iAT330zV7DmX
 XhaYjQc6DlTo1GINt+ZYWiGh+XfU7uSC72DuqHn1OcycxO0+HxlzCUbjXuYbLKXHRZE+
 otqwrXiBgabxVQliFDJyZnOT0svdPKrkSH9saw2pY1MwOThlgTocR9fZY393LWgNPhkZ
 gXag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QMLpysDwZRJXsNTpOkpDQ0qqZGLPweA1Fp1BJeeZZvI=;
 b=s6gxfSrYEBTFFhhFi0nW8I15fcbkBAdLKFmWNsSh1S0e9MJFOe4+VlDMzEy4XLqe8j
 BkvOPAbdT1AQhubEecsAqa1IOCpZhiGLSybeln3Zgi8uTFGz10S/tGDEgk0tNBEUOJwc
 jCxzm1qvv072EwIJW3ig+inQyzL5nsL9d+98TiAd/S4LOj5y5pZDcCikptoOPcfVv0UM
 UV7ajhaovP/JArtFRp0gbqmuFtbS5wRua5oacd40gmPnOSjvFBEhou3PgjTckHHg2LfT
 LDyjKDU4i/opDBVa3iBz3tAvmou18U06oGxTxpdCUb+JH5AkBL1hLi/javdaon1xvlV8
 MJaw==
X-Gm-Message-State: AOAM530zrcnMSBkMOEZj7SKRwj7NXO+I+qTgEr2YGfJ9I7sQ/mUeu/ug
 F+/nCkHe5Kc5BproAmB2bLQ=
X-Google-Smtp-Source: ABdhPJxmMcwpl4Myrm2lOmxRAOis1Le2+RYH2Z4MXZZDErK+3wrDSnBGVatkRZhgH/43FVAgJawRiQ==
X-Received: by 2002:a05:6402:12d7:b0:415:ced2:389d with SMTP id
 k23-20020a05640212d700b00415ced2389dmr5156046edx.197.1646928344437; 
 Thu, 10 Mar 2022 08:05:44 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 j5-20020a056402238500b00416c32d548esm444879eda.59.2022.03.10.08.05.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 08:05:43 -0800 (PST)
Date: Thu, 10 Mar 2022 18:05:42 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220310160542.dihodbfxnexyjo2d@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf> <865yolg8d7.fsf@gmail.com>
 <20220310150717.h7gaxamvzv47e5zc@skbuf> <86sfrpergs.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86sfrpergs.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
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

On Thu, Mar 10, 2022 at 04:51:15PM +0100, Hans Schultz wrote:
> On tor, mar 10, 2022 at 17:07, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Thu, Mar 10, 2022 at 04:00:52PM +0100, Hans Schultz wrote:
> >> >> +	brport = dsa_port_to_bridge_port(dp);
> >> >
> >> > Since this is threaded interrupt context, I suppose it could race with
> >> > dsa_port_bridge_leave(). So it is best to check whether "brport" is NULL
> >> > or not.
> >> >
> >> Would something like:
> >> if (dsa_is_unused_port(chip->ds, port))
> >>         return -ENODATA;
> >> 
> >> be appropriate and sufficient for that?
> >
> > static inline
> > struct net_device *dsa_port_to_bridge_port(const struct dsa_port *dp)
> > {
> > 	if (!dp->bridge)
> > 		return NULL;
> >
> > 	if (dp->lag)
> > 		return dp->lag->dev;
> > 	else if (dp->hsr_dev)
> > 		return dp->hsr_dev;
> >
> > 	return dp->slave;
> > }
> >
> > Notice the "dp->bridge" check. The assignments are in dsa_port_bridge_create()
> > and in dsa_port_bridge_destroy(). These functions assume rtnl_mutex protection.
> > The question was how do you serialize with that, and why do you assume
> > that dsa_port_to_bridge_port() returns non-NULL.
> >
> > So no, dsa_is_unused_port() would do absolutely nothing to help.
> 
> I was thinking in indirect terms (dangerous I know :-).

Sorry, I don't understand what you mean by "indirect terms". An "unused
port" is one with 'status = "disabled";' in the device tree. I would
expect that you don't need to handle FDB entries towards such a port!

You have a port receiving traffic with an unknown {MAC SA, VID}.
When the port is configured as locked by the bridge, this traffic will
generate ATU miss interrupts. These will be handled in an interrupt
thread that is scheduled to be handled some time in the future.
In between the moment when the packet is received and the moment when
the interrupt thread runs, a user could run "ip link set lan0 nomaster".
Then the interrupt thread would notify the bridge about these entries,
point during which a bridge port no longer exists => NULL pointer dereference.
By taking the rtnl_lock() and then checking whether dsa_port_to_bridge_port()
is NULL, you figure out whether the interrupt handler ran completely
before dsa_port_bridge_leave(), or completely after dsa_port_bridge_leave().

> 
> But wrt the nl lock, I wonder when other threads could pull the carpet
> away under this, and so I might have to wait till after the last call
> (mv88e6xxx_g1_atu_loadpurge) to free the nl lock?

That might make sense. It means: if the user runs "ip link set lan0 nomaster",
wait until I've notified the bridge and installed the entry to my own
ATU, so that they're in sync. Then, del_nbp() -> br_fdb_delete_by_port()
would come in, find that entry notified by us (I think!) and remove it.
If you call rtnl_unlock() too early, it might be possible that the ATU
entry remains lingering (unless I'm missing some subtle implicit
serialization based on mv88e6xxx_reg_lock() or similar).
