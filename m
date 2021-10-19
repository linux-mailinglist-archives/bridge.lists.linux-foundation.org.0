Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 555D4432D5E
	for <lists.bridge@lfdr.de>; Tue, 19 Oct 2021 07:43:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DB8783224;
	Tue, 19 Oct 2021 05:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WOuaF5yrkRlP; Tue, 19 Oct 2021 05:43:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E094783BEC;
	Tue, 19 Oct 2021 05:43:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C5F5C001E;
	Tue, 19 Oct 2021 05:43:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 386D9C000D
 for <bridge@lists.linux-foundation.org>; Tue, 19 Oct 2021 05:43:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 284FE40505
 for <bridge@lists.linux-foundation.org>; Tue, 19 Oct 2021 05:43:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lRefZ1XQnL0D for <bridge@lists.linux-foundation.org>;
 Tue, 19 Oct 2021 05:43:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FF79404EE
 for <bridge@lists.linux-foundation.org>; Tue, 19 Oct 2021 05:43:22 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id t21so4854243plr.6
 for <bridge@lists.linux-foundation.org>; Mon, 18 Oct 2021 22:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2dY2SfxkvaAqy+VUYsCEBS0Dl+WmqB9iUBzcxg+rxOE=;
 b=hXqi600Khl9Z/xEidbXK5mABRJNONacofAif6kmzLbqlslY3vWxZoAVobnZYgVtYpR
 dzevsjnUhsAs0kOXypN/ii5fUKp1dr3hvo2TINsNZf01u2ZtbbKtESvL7qlPlXdYbyty
 m6vtpCfF09/WLGDzzaaHpXJl1j5jeAbbSZbWqKoN5JxDS18e125lZ/g1+2i+R4a+t8Ph
 o2Dhmwmm/OKpgJzhqyueGLi5Vr/B+FdC728gtW8+3Q1Du25HxBgN3lPdwj6xKMTji12Q
 6A+9Nw5WVH769+3QQBUsjU+ZabCRFQ4BC+84VGpXk1a9qTYSbAfwTOJCmnOP6WvwIYqf
 DMMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2dY2SfxkvaAqy+VUYsCEBS0Dl+WmqB9iUBzcxg+rxOE=;
 b=kx9wg0+WGyKL1TLpqz8X/oiMYfxPJzAJ4IIufwKg0VVIdW/kB9bCil95lICUPF9T3/
 9+D8J+YUfw4uaDj+Dgr+Y1SFZ28O8jxsX5D3QQ/0Ra9RTT3bmkpiz9MPcba1p1LgreGb
 zxrhTk4yhvnslwY85H3V8OqbVTTvtg4b0EHsz8N9ZpQIyfdBSI1VVyHDM1upnWCaWe2m
 DwaaTMqjY4dSpoDJTUvV4Ed8N3b2SyB+Xiyrq9VjXKnkReiBsktYYB+1LmTo0pZlig/U
 EtxmzMYWLBM3nL1FxwtNxdzgVSvKpMVc40SBsLemKzThTW3J+o/+mDiRIQwBH62h+swr
 7F0Q==
X-Gm-Message-State: AOAM530aUmJW7J7/Fl1dX8kQgvBusX4nXhcCj4QteYxNelU6+zdnZ7y2
 qnU277fUirrE83Rt5p9caN4=
X-Google-Smtp-Source: ABdhPJxnR5q6ik6TFZhMwg3wiOMzk/KsZM0cxZRVUfCAMPyXcKH3qfSVz+L7jHsCLWT9HxHbtDvnEQ==
X-Received: by 2002:a17:90a:bd18:: with SMTP id
 y24mr4253769pjr.83.1634622201820; 
 Mon, 18 Oct 2021 22:43:21 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id a22sm15056016pfg.61.2021.10.18.22.43.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 22:43:21 -0700 (PDT)
Date: Tue, 19 Oct 2021 13:43:16 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <YW5a9JLnfZc1M8Gh@Laptop-X1>
References: <20211018082612.625417-1-liuhangbin@gmail.com>
 <ab707f4d-587a-0fae-e673-5da49f5946db@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab707f4d-587a-0fae-e673-5da49f5946db@nvidia.com>
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: Do not allow users to
 set IGMP counter/timer to zero
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

Hi Nikolay,

On Mon, Oct 18, 2021 at 01:28:14PM +0300, Nikolay Aleksandrov wrote:
> On 18/10/2021 11:26, Hangbin Liu wrote:
> > There is no meaning to set an IGMP counter/timer to 0. Or it will cause
> > unexpected behavior. E.g. if set multicast_membership_interval to 0,
> > bridge will remove the mdb immediately after adding.
> > 
> > Fixes: 79b859f573d6 ("bridge: netlink: add support for multicast_last_member_count")
> > Fixes: b89e6babad4b ("bridge: netlink: add support for multicast_startup_query_count")
> > Fixes: 7e4df51eb35d ("bridge: netlink: add support for igmp's intervals")
> > Signed-off-by: Hangbin Liu <liuhangbin@gmail.com>
> > ---
> >  net/bridge/br_netlink.c  | 73 +++++++++++++++++++++++++++++---------
> >  net/bridge/br_sysfs_br.c | 75 +++++++++++++++++++++++++++++++---------
> >  2 files changed, 116 insertions(+), 32 deletions(-)
> > 
> 
> Nacked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> For a few reasons,
> I'll start with the obvious that - yes, users are allowed to change the values to non-RFC
> compliant, but we cannot change that now as we'd risk breaking user-space which is probably
> doing that somewhere with some of the values below. We can fix any issues that might arise
> from doing it though, so it doesn't affect normal operation. If changing some of the options
> to 0 or to unreasonably high values lead to problems let's fix those and we could discuss
> adding constraints there if necessary.

I started this patch when I saw there is not limit for setting
multicast_membership_interval to 0, which will cause bridge remove the
mdb directly after adding. Do you think this is a problem.

And what about others? I don't think there is a meaning to set other intervals
to 0.

> 
> The second issue is that you're mixing different checks below, you say do not allow zero
> but you're also checking for RFC compliance between different values.

Do you mean the RFC3376 8.3 rule? I can fix it in another patch.

> 
> The third issue is that you haven't done the same change for the same values for per-vlan
> multicast options (we have the same options per-vlan as well).

Ah, thanks, I could fix that.
> 
> Your fixes tags are wrong, too. Most of these values could be set well before they were
> available through netlink.

Oh... Then how should I set the fixes tag? Since I want fix both the netlink
configs and sys configs. Add a new one d902eee43f19 ("bridge: Add multicast
count/interval sysfs entries")

> 
> Note on the style - generally I'd add helpers to set them and add the constraints in those
> helpers, so they can be used for both netlink and sysfs. It would definitely target net-next
> unless it's an actual bug fix.

How about a helper like:

int br_multicast_set_interval(unsigned long *mcast_val, u64 val)
{
	if (val) {
		mcast_val = clock_t_to_jiffies(val);
		return 0;
	} else {
		NL_SET_ERR_MSG(extack, "Invalid multicast interval, should not be 0");
		return -EINVAL;
	}
}

Thanks
Hangbin
