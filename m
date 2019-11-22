Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E41E107BA3
	for <lists.bridge@lfdr.de>; Sat, 23 Nov 2019 00:52:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 195E8265F6;
	Fri, 22 Nov 2019 23:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nYmIC0rNLksk; Fri, 22 Nov 2019 23:52:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A8056265E8;
	Fri, 22 Nov 2019 23:52:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 915E2C1DD8;
	Fri, 22 Nov 2019 23:52:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AEEB6C18DA
 for <bridge@lists.linux-foundation.org>; Fri, 22 Nov 2019 23:52:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A4B1988329
 for <bridge@lists.linux-foundation.org>; Fri, 22 Nov 2019 23:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OpiLHHzsOv8a for <bridge@lists.linux-foundation.org>;
 Fri, 22 Nov 2019 23:52:04 +0000 (UTC)
X-Greylist: delayed 00:23:47 by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6B5988325
 for <bridge@lists.linux-foundation.org>; Fri, 22 Nov 2019 23:52:04 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id o9so3773062plk.6
 for <bridge@lists.linux-foundation.org>; Fri, 22 Nov 2019 15:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SRxeP6JYxXwcDjXxRxvxSG10sfRbRAVNy5e7o8L+Unw=;
 b=KsOWuxi/0PxjefEDm2r60M34w2W3ctdF5MBaULRIuvo6rhK0YoWJZj+U5/8+/uv5s4
 ErvO0UGhCWUiaucHXjJpvBjVsayTBHFlJYPo6SQrM0qQ0ahSEbrt7Se40GXfjuciL19a
 d7pRk9mcFYR4FzDhOsAN1JPANFUe8IAt516e1/tROV/n0ayZpsqmdQLCsEHqsFCtychZ
 DHS617nxrIwyen6l4ouJb/y/VG0CJxx3tJoJRYB2lOxAA2aArXDqweuDKXJsMRDxWHFA
 j7ASJ6M3gY6C+WSyRS8jDr2mAJu4lF/xPkCRgcPodYzewwZPTIroV2uI1jv9F3W1D/Bk
 VUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SRxeP6JYxXwcDjXxRxvxSG10sfRbRAVNy5e7o8L+Unw=;
 b=csl7b0coahVrpkiIIg/L2CrYAi3DXmy18ous9nwSEu+PuQTRikIxu9C/G3F0Urj4XO
 y0jET+tWkkyqBUfjPjWdprqMqdFrYerdgF8kp+XaGG1n9Y/jpURqyg20qUODNCtTG/h7
 G3PVl7/Ly7r8/T2+0nkmGBjZaaX4N+yuPPPyWWbzOwMy5q/moDOhrnLCsTU3ta+xu3Sl
 bTqPeUkVzZro88pSaryeRgr8bSFtv0TznRg41DDOIpd6ETbHPGfwzT5Lw4vQOtXLKKDE
 0nULzzA7Yw1HWVt9QFo0h+Mo7GFTJoicksNMYJDHJK9UIGjf2nNLurlm/HOAuJg1s+cR
 7IiA==
X-Gm-Message-State: APjAAAWEW3XYa0bMiCRl2j9z0B5jDQeRQatoJ7bJXFl2mr1qaGvqlTWp
 IdwU2DX5pMYZTjAatwlbv95Blcbs91nKjg==
X-Google-Smtp-Source: APXvYqwpjc5ll2gBwpxqQTjvkHdw+9SQZNpM+YTp2pPw9mGEcjP0Q3IqtOmK+ISnIHglNlAEMDoQMA==
X-Received: by 2002:a17:90a:1ac8:: with SMTP id
 p66mr21599142pjp.24.1574464905489; 
 Fri, 22 Nov 2019 15:21:45 -0800 (PST)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id c84sm8613847pfc.112.2019.11.22.15.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 15:21:45 -0800 (PST)
Date: Fri, 22 Nov 2019 15:21:37 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Vivien Didelot <vivien.didelot@gmail.com>
Message-ID: <20191122152137.33f9f9d7@hermes.lan>
In-Reply-To: <20191122230742.1515752-1-vivien.didelot@gmail.com>
References: <20191122230742.1515752-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: f.fainelli@gmail.com, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: add STP stat counters
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

On Fri, 22 Nov 2019 18:07:42 -0500
Vivien Didelot <vivien.didelot@gmail.com> wrote:

> This adds rx_bpdu, tx_bpdu, rx_tcn, tx_tcn, transition_blk,
> transition_fwd stat counters to the bridge ports, along with sysfs
> statistics nodes under a "statistics" directory of the "brport" entry,
> providing useful information for STP, for example:
> 
>     # cat /sys/class/net/lan0/brport/statistics/tx_bpdu
>     26
>     # cat /sys/class/net/lan5/brport/statistics/transition_fwd
>     3
> 
> At the same time, make BRPORT_ATTR define a non-const attribute as
> this is required by the attribute group structure.
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>

Please don't add more sysfs stuff. put it in netlink.

> ---
>  net/bridge/br_private.h  |  8 ++++++++
>  net/bridge/br_stp.c      |  8 ++++++++
>  net/bridge/br_stp_bpdu.c |  4 ++++
>  net/bridge/br_sysfs_if.c | 35 ++++++++++++++++++++++++++++++++++-
>  4 files changed, 54 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 36b0367ca1e0..360d8030e3b2 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -283,6 +283,14 @@ struct net_bridge_port {
>  #endif
>  	u16				group_fwd_mask;
>  	u16				backup_redirected_cnt;
> +
> +	/* Statistics */
> +	atomic_long_t			rx_bpdu;
> +	atomic_long_t			tx_bpdu;
> +	atomic_long_t			rx_tcn;
> +	atomic_long_t			tx_tcn;
> +	atomic_long_t			transition_blk;
> +	atomic_long_t			transition_fwd;
>  };
>  

There is no these need to be atomic.
Atomic is expensive.

