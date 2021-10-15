Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBC442E6DF
	for <lists.bridge@lfdr.de>; Fri, 15 Oct 2021 04:52:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ED57405D7;
	Fri, 15 Oct 2021 02:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNtOpf41QTaL; Fri, 15 Oct 2021 02:52:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 28041405F8;
	Fri, 15 Oct 2021 02:52:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E4DC5C0022;
	Fri, 15 Oct 2021 02:52:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87FC6C000D
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 02:52:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6985840012
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 02:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SL3GYs3dNm6M for <bridge@lists.linux-foundation.org>;
 Fri, 15 Oct 2021 02:52:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D77F640001
 for <bridge@lists.linux-foundation.org>; Fri, 15 Oct 2021 02:52:00 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id f21so5502930plb.3
 for <bridge@lists.linux-foundation.org>; Thu, 14 Oct 2021 19:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ucGNWVxcRddDN1+ka0dNwUptaDTbn15BT3DH4Hwkw+8=;
 b=k16VEmnWCOJ1z/BCd5eL3yQW1Sh4YHFvAUR4iS02i/18d3V0zTVECjlCChvSz3zkqa
 bRR5izLG+IWEkBK2NjZpl2FBv2Zsk69PqFzlZhBxWJbGGCcvlfd6bkoBCFd19GduBcxg
 Bn6Ls8RxEgUPmomubhvUl3cnzlF/Yr3p5B4/AEOo9auWKfj2buym81OViMmEZs7fE2IQ
 Hk7wDVQhY6BUFjugwwVoCc+bisJWmEtH1sENSUH8wswwwqkuZyZu8vL0EtVBqshxLzhL
 MKT5tDTnYgiQCuNQ1tGEEZp840pi7JCagId5hJY/oXqVd8kOzyvbBkP0yk/Skf6qyfOD
 W1cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ucGNWVxcRddDN1+ka0dNwUptaDTbn15BT3DH4Hwkw+8=;
 b=qhYdPjl4sedU1qkjzQ9bQj49rG+RF2jKMR889HFshm6VWqLRTYLoT7CfeVfcu7nBan
 RC3owuDLjmxYcPq+bkea79tWBjaCRBTrojP9sxgruzYRwmQgSXlaCx5+brJO0LnKDdJQ
 fWHQFFm8C0ziuU+UoKqfUMDCkCJ9AW1Ts+mg/eV2IWP7vWE3f6f18oki64npfMJqX67R
 LQGTeaKi8cNgKAI63EeH8zYgdkImSEzMjDohlP4y12kb4Gp7obxCEhDkO9x3a2qNJU6d
 uF+RuLrAl1u9murRz5toC3IDhKmr0GTuSsbTxx8q+zCRxm34YWQpYuFw8hR/owGzHS2T
 8Rpw==
X-Gm-Message-State: AOAM533PDUdS3v4p5vB/BWpJAsyx3k07Bm/VI6c4LKmvSIhp4fWIBRxu
 rHasqtUvYGKhlTjPsw3BWNo=
X-Google-Smtp-Source: ABdhPJxFFcb8/UXAvxUXngke/UDgp2mjcTrK7f4crhmU+EefFgONVDCXzkF5d5hzi3pWXXWoiLKs8g==
X-Received: by 2002:a17:902:e144:b0:13f:4b7:68c0 with SMTP id
 d4-20020a170902e14400b0013f04b768c0mr8453206pla.77.1634266320080; 
 Thu, 14 Oct 2021 19:52:00 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id q18sm4117411pfj.46.2021.10.14.19.51.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Oct 2021 19:51:59 -0700 (PDT)
Date: Fri, 15 Oct 2021 10:51:54 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <YWjsyk/Dzg2/zVbw@Laptop-X1>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
 <20200907095619.11216-11-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200907095619.11216-11-nikolay@cumulusnetworks.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v4 10/15] net: bridge: mcast: support
 for IGMPv3/MLDv2 ALLOW_NEW_SOURCES report
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

On Mon, Sep 07, 2020 at 12:56:14PM +0300, Nikolay Aleksandrov wrote:
> This patch adds handling for the ALLOW_NEW_SOURCES IGMPv3/MLDv2 report
> types and limits them only when multicast_igmp_version == 3 or
> multicast_mld_version == 2 respectively. Now that IGMPv3/MLDv2 handling
> functions will be managing timers we need to delay their activation, thus
> a new argument is added which controls if the timer should be updated.
> We also disable host IGMPv3/MLDv2 handling as it's not yet implemented and
> could cause inconsistent group state, the host can only join a group as
> EXCLUDE {} or leave it.
> 
> v4: rename update_timer to igmpv2_mldv1 and use the passed value from
>     br_multicast_add_group's callers
> v3: Add IPv6/MLDv2 support
> 
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> ---
>  net/bridge/br_multicast.c | 152 ++++++++++++++++++++++++++++++++------
>  net/bridge/br_private.h   |   7 ++
>  2 files changed, 137 insertions(+), 22 deletions(-)
> 
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index ba2ce875a80e..98600a08114e 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -787,7 +787,8 @@ static int br_multicast_add_group(struct net_bridge *br,
>  				  struct net_bridge_port *port,
>  				  struct br_ip *group,
>  				  const unsigned char *src,
> -				  u8 filter_mode)
> +				  u8 filter_mode,
> +				  bool igmpv2_mldv1)
>  {
>  	struct net_bridge_port_group __rcu **pp;
>  	struct net_bridge_port_group *p;
> @@ -826,7 +827,8 @@ static int br_multicast_add_group(struct net_bridge *br,
>  	br_mdb_notify(br->dev, mp, p, RTM_NEWMDB);
>  
>  found:
> -	mod_timer(&p->timer, now + br->multicast_membership_interval);
> +	if (igmpv2_mldv1)
> +		mod_timer(&p->timer, now + br->multicast_membership_interval);

Hi Nikolay,

Our engineer found that the multicast_membership_interval will not work with
IGMPv3. Is it intend as you said "IGMPv3/MLDv2 handling is not yet
implemented" ?

Thanks
Hangbin
