Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 714E79BD7C
	for <lists.bridge@lfdr.de>; Sat, 24 Aug 2019 14:05:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7261ECC9;
	Sat, 24 Aug 2019 12:05:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 88C75CA6
	for <bridge@lists.linux-foundation.org>;
	Sat, 24 Aug 2019 12:05:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 18968A7
	for <bridge@lists.linux-foundation.org>;
	Sat, 24 Aug 2019 12:05:43 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id b10so17318169ioj.2
	for <bridge@lists.linux-foundation.org>;
	Sat, 24 Aug 2019 05:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=0hvg8EcOFy1hV2UV4sVHiLXXFhFD6hDENq5iidN2YYU=;
	b=qSY3vN9kfRyMrR0s+KtgMC54iFwLVcFRzH9+NcDJCePlL2a8xUzCkuImtzreATJyvq
	VihcLboVrvBQOosXlNGS6P7BXq2Gk+Ex82CskP8ZyojkWoR2uLDDKGgbHphzjV/80Yxe
	AhGH/HKzjwSR/aJx8544cJIpvmePOx+WDhSBkvVL4mGJeNyk3VsmcLwvtaP8ftry8HDK
	42/Ppc2RMtFvE2Xkh55152WJnXm6Z88+JqmnNU7Am+AaErt7G1yd/1EMiJJtUlOvXmNX
	eiEmzTVNUC7P4yvfpA89otsB11yyAPDnF6ueut9V7AROStf57qPAOonQfx8vP7PHsNdf
	gHfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=0hvg8EcOFy1hV2UV4sVHiLXXFhFD6hDENq5iidN2YYU=;
	b=BuO7y93Z62SLddIhhzKCBXj4d33HicZK4aO/snELeZ+9y7Btl3YJETsJVmhWeW3p78
	UKmHvqd9rb1EkJ5ZVUM8ys/887ZSbiMVuIWtmnZcrnqgzvDAPWwgxFcrDRpANol8ZgqZ
	59Avfcq5CA64I2MFTBvXmOqOC2Aft/WlPe+oXPILggF/DHzIQVjgW6XpfjNgA2arbdWO
	QCS3Vghf3KR27J9t2wAUH6gya4Rfr4HwgXCjUw96/jc3otNlbzAv9SHNAUYopDGDyVug
	nbemZKPi9dFcYdrGPULEHrmrHfK1HWihE0Tu66p6gO9O6IwcKHgGLCGCnoRde0LO7hpb
	N8ew==
X-Gm-Message-State: APjAAAU/EAfksECy7rZWSAEAUQarVB9BeCrmRYAT31YTGxkscnZ5pK0A
	7+P5wWYLarljdCZrtgoR5kWo5Q==
X-Google-Smtp-Source: APXvYqyIK4zLPXbh2ON1KZJES4TjV79eN/AeszSh3JNwvu8Vi9/CICCb8AZZeFzPLyPUFQ6pt2GEbg==
X-Received: by 2002:a6b:5116:: with SMTP id f22mr4074585iob.108.1566648342297; 
	Sat, 24 Aug 2019 05:05:42 -0700 (PDT)
Received: from xps13.local.tld (cpe-67-255-90-149.maine.res.rr.com.
	[67.255.90.149])
	by smtp.gmail.com with ESMTPSA id k7sm4651829iop.88.2019.08.24.05.05.40
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 24 Aug 2019 05:05:42 -0700 (PDT)
Date: Sat, 24 Aug 2019 08:05:37 -0400
From: Stephen Hemminger <stephen@networkplumber.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20190824080537.5ce7083d@xps13.local.tld>
In-Reply-To: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
References: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: alexandre.belloni@bootlin.com, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	UNGLinuxDriver@microchip.com, allan.nielsen@microchip.com,
	davem@davemloft.net
Subject: Re: [Bridge] [PATCH 0/3] Add NETIF_F_HW_BRIDGE feature
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Thu, 22 Aug 2019 21:07:27 +0200
Horatiu Vultur <horatiu.vultur@microchip.com> wrote:

> Current implementation of the SW bridge is setting the interfaces in
> promisc mode when they are added to bridge if learning of the frames is
> enabled.
> In case of Ocelot which has HW capabilities to switch frames, it is not
> needed to set the ports in promisc mode because the HW already capable of
> doing that. Therefore add NETIF_F_HW_BRIDGE feature to indicate that the
> HW has bridge capabilities. Therefore the SW bridge doesn't need to set
> the ports in promisc mode to do the switching.
> This optimization takes places only if all the interfaces that are part
> of the bridge have this flag and have the same network driver.
> 
> If the bridge interfaces is added in promisc mode then also the ports part
> of the bridge are set in promisc mode.
> 
> Horatiu Vultur (3):
>   net: Add HW_BRIDGE offload feature
>   net: mscc: Use NETIF_F_HW_BRIDGE
>   net: mscc: Implement promisc mode.
> 
>  drivers/net/ethernet/mscc/ocelot.c | 26 ++++++++++++++++++++++++--
>  include/linux/netdev_features.h    |  3 +++
>  net/bridge/br_if.c                 | 29 ++++++++++++++++++++++++++++-
>  net/core/ethtool.c                 |  1 +
>  4 files changed, 56 insertions(+), 3 deletions(-)
> 

IMHO there are already enough nerd knobs in bridge to support this.
If you hardware can't do real bridging, it is only doing MACVLAN so that
is what you should support instead.
