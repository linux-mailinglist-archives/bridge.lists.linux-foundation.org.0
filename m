Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC8D3A6B2
	for <lists.bridge@lfdr.de>; Sun,  9 Jun 2019 17:44:42 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A9A6AC7F;
	Sun,  9 Jun 2019 15:44:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1401C2C
	for <bridge@lists.linux-foundation.org>;
	Sun,  9 Jun 2019 15:44:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C1B8174
	for <bridge@lists.linux-foundation.org>;
	Sun,  9 Jun 2019 15:44:21 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id w33so10385457edb.10
	for <bridge@lists.linux-foundation.org>;
	Sun, 09 Jun 2019 08:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=pMFPZMSiGklfaZyfuFOGH+2W0X1p8u7TpG+RYN4ZXnY=;
	b=EXmd3v5obVkBPoKbED/ljCt8sh5huVmTgTEujveNN6i39S4CCp7O401AeWJlt0MXPL
	rjFmwoNnZKuzleSsdaYCDsRFm3MJSvJhIoGBbY+vsjEZIyMlYCz+QfYmBRuYOK46zxIA
	q8MV3LVdz/l8m8L/tAFdKEnQ0k2GVoHT05JxNQ370QxtZSKN0m7n4DrpN0aYmkazGElI
	eoD9qXhK3Z8kR6OD930EKB89POnoOJWbwleOlz6TPHsJkmpoAoex22apfAlQai2Bz8rO
	hJUGi5hIw43EirJpBm1j7e/lHQA+3kVb2DREdowJbOi9feiwF/xdfk1WivCifhXFI25k
	Yr2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=pMFPZMSiGklfaZyfuFOGH+2W0X1p8u7TpG+RYN4ZXnY=;
	b=nXdvcWhkbI4mC3ZGdYlOTBm1n27qi7BjELw6vLaBxBxg8+qaUc8ajtWqhl82Bc0Ipm
	NL3o+SNfDbDw1pV2o4depxxIzGP3c3UnaMHvjrniwFWoklXicwT2AEVu5ApuCUXaruKm
	+uvBkaQHLo0YcRX2X6g9RIqIb5AGai+nImqDek+ZGpZNOiyEUv/8W3KrPDplPSSyJ2pm
	Q1POgh0gdqJSkHUBrIF4gGUmtA3hsj2JhN9leMb1M/r7yvCAlZN9rMx4bcfpVIeaM0Dt
	4kbPtxwxAiDg1PQkDGZVjYsnfKR8C8kj99h7mvOcZVjt3UuaGrhJ5dzW+7ZPZyfUd+z7
	c2AQ==
X-Gm-Message-State: APjAAAUZHqSz2EPhmsZgDDkbcsmp+GbgZggUcfcNijwbRWrSvHkhIPju
	7yvroCUnT1yikIOPWqdi1X4VPQ==
X-Google-Smtp-Source: APXvYqxbc2xDk7pO55cfSqSdryDdStSJH1Te+y+n+bvtTiprqPiFfuOTHM1iD6YH02QCzObZygTxkQ==
X-Received: by 2002:a17:906:4f87:: with SMTP id
	o7mr55245469eju.281.1560095060514; 
	Sun, 09 Jun 2019 08:44:20 -0700 (PDT)
Received: from brauner.io ([2a02:8109:9cc0:6dac:cd8f:f6e9:1b84:bbb1])
	by smtp.gmail.com with ESMTPSA id z3sm2102247edh.71.2019.06.09.08.44.17
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 09 Jun 2019 08:44:19 -0700 (PDT)
Date: Sun, 9 Jun 2019 17:44:16 +0200
From: Christian Brauner <christian@brauner.io>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Message-ID: <20190609154415.kkzmzl2jp5esoczu@brauner.io>
References: <20190606114142.15972-1-christian@brauner.io>
	<20190606114142.15972-2-christian@brauner.io>
	<20190606081440.61ea1c62@hermes.lan>
	<20190606151937.mdpalfk7urvv74ub@brauner.io>
	<20190606163035.x7rvqdwubxiai5t6@salvia>
	<20190607132516.q3zwmzrynvqo7mzn@brauner.io>
	<20190607142858.vgkljqohn34rxhe2@salvia>
	<20190607144343.nzdlnuo4csllcy7q@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190607144343.nzdlnuo4csllcy7q@salvia>
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

On Fri, Jun 07, 2019 at 04:43:43PM +0200, Pablo Neira Ayuso wrote:
> On Fri, Jun 07, 2019 at 04:28:58PM +0200, Pablo Neira Ayuso wrote:
> > On Fri, Jun 07, 2019 at 03:25:16PM +0200, Christian Brauner wrote:
> > > On Thu, Jun 06, 2019 at 06:30:35PM +0200, Pablo Neira Ayuso wrote:
> > > > On Thu, Jun 06, 2019 at 05:19:39PM +0200, Christian Brauner wrote:
> > > > > On Thu, Jun 06, 2019 at 08:14:40AM -0700, Stephen Hemminger wrote:
> > > > > > On Thu,  6 Jun 2019 13:41:41 +0200
> > > > > > Christian Brauner <christian@brauner.io> wrote:
> > > > > > 
> > > > > > > +struct netns_brnf {
> > > > > > > +#ifdef CONFIG_SYSCTL
> > > > > > > +	struct ctl_table_header *ctl_hdr;
> > > > > > > +#endif
> > > > > > > +
> > > > > > > +	/* default value is 1 */
> > > > > > > +	int call_iptables;
> > > > > > > +	int call_ip6tables;
> > > > > > > +	int call_arptables;
> > > > > > > +
> > > > > > > +	/* default value is 0 */
> > > > > > > +	int filter_vlan_tagged;
> > > > > > > +	int filter_pppoe_tagged;
> > > > > > > +	int pass_vlan_indev;
> > > > > > > +};
> > > > > > 
> > > > > > Do you really need to waste four bytes for each
> > > > > > flag value. If you use a u8 that would work just as well.
> > > > > 
> > > > > I think we had discussed something like this but the problem why we
> > > > > can't do this stems from how the sysctl-table stuff is implemented.
> > > > > I distinctly remember that it couldn't be done with a flag due to that.
> > > > 
> > > > Could you define a pernet_operations object? I mean, define the id and size
> > > > fields, then pass it to register_pernet_subsys() for registration.
> > > > Similar to what we do in net/ipv4/netfilter/ipt_CLUSTER.c, see
> > > > clusterip_net_ops and clusterip_pernet() for instance.
> > > 
> > > Hm, I don't think that would work. The sysctls for br_netfilter are
> > > located in /proc/sys/net/bridge under /proc/sys/net which is tightly
> > > integrated with the sysctls infrastructure for all of net/ and all the
> > > folder underneath it including "core", "ipv4" and "ipv6".
> > > I don't think creating and managing files manually in /proc/sys/net is
> > > going to fly. It also doesn't seem very wise from a consistency and
> > > complexity pov. I'm also not sure if this would work at all wrt to file
> > > creation and reference counting if there are two different ways of
> > > managing them in the same subfolder...
> > > (clusterip creates files manually underneath /proc/net which probably is
> > > the reason why it gets away with it.)
> > 
> > br_netfilter is now a module, and br_netfilter_hooks.c is part of it
> > IIRC, this file registers these sysctl entries from the module __init
> > path.
> > 
> > It would be a matter of adding a new .init callback to the existing
> > brnf_net_ops object in br_netfilter_hooks.c. Then, call
> > register_net_sysctl() from this .init callback to register the sysctl
> > entries per netns.
> 
> Actually, this is what you patch is doing...
> 
> > There is already a brnf_net area that you can reuse for this purpose,
> > to place these pernetns flags...
> > 
> > struct brnf_net {
> >         bool enabled;
> > };
> > 
> > which is going to be glad to have more fields (under the #ifdef
> > CONFIG_SYSCTL) there.
> 
> ... except that struct brnf_net is not used to store the ctl_table.
> 
> So what I'm propose should be result in a small update to your patch 2/2.

Actually not, I think. I had to rework it substantially but I think the
outcome is quite nice. :) I'll send a new version now/today. :)

Thanks!
Christian
