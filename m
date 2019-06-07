Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEA438B99
	for <lists.bridge@lfdr.de>; Fri,  7 Jun 2019 15:26:32 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 49DE21271;
	Fri,  7 Jun 2019 13:26:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB0B7125C
	for <bridge@lists.linux-foundation.org>;
	Fri,  7 Jun 2019 13:25:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 162A46D6
	for <bridge@lists.linux-foundation.org>;
	Fri,  7 Jun 2019 13:25:19 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f10so2089779wmb.1
	for <bridge@lists.linux-foundation.org>;
	Fri, 07 Jun 2019 06:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=lWF7Zmdzma5qVPiqq9W2CiXxJttkoC05tRBABgFXJ/M=;
	b=PCqTuNeZTb7yegrj934+38ehLd680JhdGBUMG3lzhHUpULWtsuAwvF6bT3SQJIzU60
	t4zlFyt0krRu56LktDzV90YaK3Hu3kxXhPZry3+YK67pYb6li8Gc1Dag7A32sDDBhOpi
	dSx579Jz6HSqhhIDYFXnu1hT+6//hQbtrb9alPKyjcgOegWjdYd5QoOi0cCzv7cTH8fR
	qIpqoUvTU4b74w/fBdcdj3NSV+9Beu4wHl2VcVyrxdBbehCvH5HP1MUcIElB/q36HTYx
	3Ub8fQG5OD1v1xEwbBa8CFE5twm6l2zzF9RaoYQgdZUNV6x4kqvTDJ8swChV0yIN5zEK
	MPeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lWF7Zmdzma5qVPiqq9W2CiXxJttkoC05tRBABgFXJ/M=;
	b=jWNX2t14caoFNVKgAeCNkjqVzAqhG4PUkZxPU5BQ3S75kMoqkwuNIg+V4SnQz4U416
	yO4xQ3jZmd20zBUJMByJJPAOcHjHkkNWzzDlrqWwZIOsDiS6dyyBVsIpyHd9jiriQAlX
	xV7i6SENzHjXa+T9vJaMi3U9MhK4GHyX+D0QunSOr/Qa1jj1Z48Tf/RGAKnchtwPYrhf
	3YSfxJc+4lUg67CGQKuaUouTXR3WdV0GIc387LyeUZ6hfkhV2186/bw+r23Tq7NvQP/M
	k4nDrYumQqHJoibu+oJvuvtIWv1hlPSfkdM1h/fwvhSxFgcJjpyp9/F9yAHlWsb3JiyK
	1JfA==
X-Gm-Message-State: APjAAAXMQiCqCAUSJk1ghGwBfjB84B9fBodgwNUgGTBWp13Dd5gbXiGg
	BJuOuzKfEBh+zSXpGXr6EKBTMw==
X-Google-Smtp-Source: APXvYqy5W/wAqvcKpemRVdye/6mwU+cvstm7Ag3K2FoAuNgn6L1wcePnLICELZYQJ3rkXhpPcV9Zkg==
X-Received: by 2002:a1c:c305:: with SMTP id t5mr3602053wmf.163.1559913918415; 
	Fri, 07 Jun 2019 06:25:18 -0700 (PDT)
Received: from brauner.io (p54AC595E.dip0.t-ipconnect.de. [84.172.89.94])
	by smtp.gmail.com with ESMTPSA id
	f24sm2144087wmb.16.2019.06.07.06.25.17
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 07 Jun 2019 06:25:18 -0700 (PDT)
Date: Fri, 7 Jun 2019 15:25:16 +0200
From: Christian Brauner <christian@brauner.io>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Message-ID: <20190607132516.q3zwmzrynvqo7mzn@brauner.io>
References: <20190606114142.15972-1-christian@brauner.io>
	<20190606114142.15972-2-christian@brauner.io>
	<20190606081440.61ea1c62@hermes.lan>
	<20190606151937.mdpalfk7urvv74ub@brauner.io>
	<20190606163035.x7rvqdwubxiai5t6@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190606163035.x7rvqdwubxiai5t6@salvia>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ueberall@themenzentrisch.de, vapier@chromium.org, richardrose@google.com,
	bhthompson@google.com, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, fw@strlen.de,
	linux-kernel@vger.kernel.org, joelhockey@chromium.org,
	tyhicks@canonical.com, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, kadlec@blackhole.kfki.hu,
	smbarber@chromium.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH RESEND net-next 1/2] br_netfilter: add struct
	netns_brnf
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

On Thu, Jun 06, 2019 at 06:30:35PM +0200, Pablo Neira Ayuso wrote:
> On Thu, Jun 06, 2019 at 05:19:39PM +0200, Christian Brauner wrote:
> > On Thu, Jun 06, 2019 at 08:14:40AM -0700, Stephen Hemminger wrote:
> > > On Thu,  6 Jun 2019 13:41:41 +0200
> > > Christian Brauner <christian@brauner.io> wrote:
> > > 
> > > > +struct netns_brnf {
> > > > +#ifdef CONFIG_SYSCTL
> > > > +	struct ctl_table_header *ctl_hdr;
> > > > +#endif
> > > > +
> > > > +	/* default value is 1 */
> > > > +	int call_iptables;
> > > > +	int call_ip6tables;
> > > > +	int call_arptables;
> > > > +
> > > > +	/* default value is 0 */
> > > > +	int filter_vlan_tagged;
> > > > +	int filter_pppoe_tagged;
> > > > +	int pass_vlan_indev;
> > > > +};
> > > 
> > > Do you really need to waste four bytes for each
> > > flag value. If you use a u8 that would work just as well.
> > 
> > I think we had discussed something like this but the problem why we
> > can't do this stems from how the sysctl-table stuff is implemented.
> > I distinctly remember that it couldn't be done with a flag due to that.
> 
> Could you define a pernet_operations object? I mean, define the id and size
> fields, then pass it to register_pernet_subsys() for registration.
> Similar to what we do in net/ipv4/netfilter/ipt_CLUSTER.c, see
> clusterip_net_ops and clusterip_pernet() for instance.

Hm, I don't think that would work. The sysctls for br_netfilter are
located in /proc/sys/net/bridge under /proc/sys/net which is tightly
integrated with the sysctls infrastructure for all of net/ and all the
folder underneath it including "core", "ipv4" and "ipv6".
I don't think creating and managing files manually in /proc/sys/net is
going to fly. It also doesn't seem very wise from a consistency and
complexity pov. I'm also not sure if this would work at all wrt to file
creation and reference counting if there are two different ways of
managing them in the same subfolder...
(clusterip creates files manually underneath /proc/net which probably is
the reason why it gets away with it.)

Christian
