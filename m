Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2C431579C
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 21:20:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 110C486C58;
	Tue,  9 Feb 2021 20:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZGE7MfLKvMI; Tue,  9 Feb 2021 20:20:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3B8886BDB;
	Tue,  9 Feb 2021 20:20:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6D6B8C0174;
	Tue,  9 Feb 2021 20:20:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 832A7C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71DE886B43
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M0x1vDxS09Ts for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 20:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DE04886B42
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:20:49 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id g10so25629582eds.2
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 12:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OJBJZoWtqasITVYW+Sh00YF0phZ4lq1R3a/gcaU0ls4=;
 b=o/AxlQl0i/wUD4989dM3BQ9Gi/UH+Je6cbHNhA84lwvzRqeUwuhW4S4haRyZI0GgPd
 Ej/r7H/wM6R3hOXnDtJJF14SNOLs40Wvo4qGFTwwD4QlpUsFij206pVp+GJb4kxAsY3F
 z65T8HrcYQbcL8vFhr2HcbobpEEWPUvqncsAmlpky62S2x5+q3vCbm2JTJId8ZDe3J8n
 VrW5z3qLoSpLdUyM43J9QjBj6MqZJ7WdU6UztgN2EideHqQQZevsC6BV7EoRN6w051Hr
 G2lyfCoI3UgEmrYW+DhPm9tOlmz3duWY6/FQFMvZd6sjKzVuJ0rn7BFROqc83Ob/Wvtd
 hRVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OJBJZoWtqasITVYW+Sh00YF0phZ4lq1R3a/gcaU0ls4=;
 b=rAFdT5MvAucjLuq3Q8Ia/Gve20zftcwTOg9PVcD6OYylFV4vJXbFxRJrTlgrX1U2zZ
 5RX3wQiSA3/toistMMHLnV/Zx8tdJ17UiZI0sGrH0Bg8RW2CaJDocSRbUREoXt0Vz6Ww
 arEN45GjVl2rJ/LWZDBaawvg3KUxrMsKFzq2BbEtyiv7+KIAheMcXfeTq3nfDGC9hWWq
 Q5R8kGf2FPjDjIBjAvyWaFuBvP1rPe86GY70u78RMCWYZ9Q/i0ITCHqYbZ1NxG9c3aZA
 p+ls9m4a5ShT1ieXJoaX947jqcGHvaTYxauign257FB5lXjwHrlw/VCXk8jGlr1b9ZK9
 4lTQ==
X-Gm-Message-State: AOAM532vOl/izC3xNLYxjd9JiuG7FbPQiHuaQwMQW9R2kQVmgKM1y6mU
 TwhegCeJuOUag56kDITQKZ0=
X-Google-Smtp-Source: ABdhPJwJtHUiJJW8tLUk73YO+ec8lbnMpR7egGqbTCfnV7RroIzrPKEhDhjC2bnmohYOtx/S8OFm6A==
X-Received: by 2002:a50:cd8c:: with SMTP id p12mr25052831edi.114.1612902048344; 
 Tue, 09 Feb 2021 12:20:48 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id q14sm12228756edw.52.2021.02.09.12.20.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 12:20:47 -0800 (PST)
Date: Tue, 9 Feb 2021 22:20:45 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210209202045.obayorcud4fg2qqb@skbuf>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-5-olteanv@gmail.com>
 <20210209185100.GA266253@shredder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209185100.GA266253@shredder.lan>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net-next 04/11] net: bridge: offload initial
 and final port flags through switchdev
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

On Tue, Feb 09, 2021 at 08:51:00PM +0200, Ido Schimmel wrote:
> On Tue, Feb 09, 2021 at 05:19:29PM +0200, Vladimir Oltean wrote:
> > So switchdev drivers operating in standalone mode should disable address
> > learning. As a matter of practicality, we can reduce code duplication in
> > drivers by having the bridge notify through switchdev of the initial and
> > final brport flags. Then, drivers can simply start up hardcoded for no
> > address learning (similar to how they already start up hardcoded for no
> > forwarding), then they only need to listen for
> > SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS and their job is basically done, no
> > need for special cases when the port joins or leaves the bridge etc.
> 
> How are you handling the case where a port leaves a LAG that is linked
> to a bridge? In this case the port becomes a standalone port, but will
> not get this notification.

Apparently the answer to that question is "I delete the code that makes
this use case work", how smart of me. Thanks.

Unless you have any idea how I could move the logic into the bridge, I
guess I'm stuck with DSA and all the other switchdev drivers having this
forest of corner cases to deal with. At least I can add a comment so I'm
not tempted to delete it next time.
