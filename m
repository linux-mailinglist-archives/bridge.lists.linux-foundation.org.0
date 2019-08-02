Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF6980891
	for <lists.bridge@lfdr.de>; Sun,  4 Aug 2019 00:57:47 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 314CCF45;
	Sat,  3 Aug 2019 22:57:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3BBE1454
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 14:29:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DBB417ED
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 14:29:58 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id k8so72530962eds.7
	for <bridge@lists.linux-foundation.org>;
	Fri, 02 Aug 2019 07:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6/YUk+s06hAVlFScFvuqBWrCMc7SbUqY5yZ8thAohgc=;
	b=YEeAa1MO/ZT/XDp6v5ZilE/cHNC23cJUFVL42exnPJkE17cDls7LUzePvMmvcojzKr
	PYJ5hl1WwwA6Izfc3TqctfJtebTD1PmD/XnePRCAkYj2Qhh/l2FLHCh/E3dFFqBR09bT
	mxHs/b4qleIWhCdQg+CPgcq2gX+RNczY/v5Js=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6/YUk+s06hAVlFScFvuqBWrCMc7SbUqY5yZ8thAohgc=;
	b=g3LjiVLjayQtShh9ledV02efqTGOW0yM5WHa4AVFH8P59D0ZNNNqQfSUiRXlUXieMU
	ta/TJjA0yaNKdWyjXrTMcp+7NQxQpoX3BIEFWZMJfal5aKtlTpMA2zRF/myBqvVtj136
	XkQoHyDOMBMNapJqAtRLffI8i29AWCl5lhAkooOXvpqqUjxVZFkCwYqd+imkPPdHL70n
	bAANcPwt4aZ5aJ+rJF7TXIiQQZGy8yo0TZiZcgXw9mFSZ2jy44+L4TLvgc9V+cVKCvtA
	RuKKG9RZZYNmbtFyv6pbhA2QjRVCsAPy28YD4ebiCVwPp9HW8NI5MzkhRPRx6uBeGCxO
	nAZw==
X-Gm-Message-State: APjAAAVloTuRwdJ0qWRKALpuwCCNNacQ06wFvNjF7+1u2DpH5/B0/WCu
	SozBux2JJYKyGEDi26CLokdzgC2eJt9uiLPYSN0tGw==
X-Google-Smtp-Source: APXvYqyUY9i0euJay/JliAcigHmKXHooCGBtq7aFqiFICEuaXx/CHRZG9wxmZ352bNLjpAuf1HlXOMlrgUO09DSQiIg=
X-Received: by 2002:a17:906:5399:: with SMTP id
	g25mr104653993ejo.247.1564756197376; 
	Fri, 02 Aug 2019 07:29:57 -0700 (PDT)
MIME-Version: 1.0
References: <0a015a21-c1ae-e275-e675-431f08bece86@cumulusnetworks.com>
	<20190802105736.26767-1-nikolay@cumulusnetworks.com>
In-Reply-To: <20190802105736.26767-1-nikolay@cumulusnetworks.com>
From: Roopa Prabhu <roopa@cumulusnetworks.com>
Date: Fri, 2 Aug 2019 07:29:46 -0700
Message-ID: <CAJieiUiPFYDoi=AuFURNEuxNmkcVq5jcEVyDq5Ei1=i5tZ4nSA@mail.gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev <netdev@vger.kernel.org>, bridge@lists.linux-foundation.org,
	David Miller <davem@davemloft.net>, michael-dev <michael-dev@fami-braun.de>
Subject: Re: [Bridge] [PATCH net v4] net: bridge: move default pvid
	init/deinit to NETDEV_REGISTER/UNREGISTER
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

On Fri, Aug 2, 2019 at 3:57 AM Nikolay Aleksandrov
<nikolay@cumulusnetworks.com> wrote:
>
> Most of the bridge device's vlan init bugs come from the fact that its
> default pvid is created at the wrong time, way too early in ndo_init()
> before the device is even assigned an ifindex. It introduces a bug when the
> bridge's dev_addr is added as fdb during the initial default pvid creation
> the notification has ifindex/NDA_MASTER both equal to 0 (see example below)
> which really makes no sense for user-space[0] and is wrong.
> Usually user-space software would ignore such entries, but they are
> actually valid and will eventually have all necessary attributes.
> It makes much more sense to send a notification *after* the device has
> registered and has a proper ifindex allocated rather than before when
> there's a chance that the registration might still fail or to receive
> it with ifindex/NDA_MASTER == 0. Note that we can remove the fdb flush
> from br_vlan_flush() since that case can no longer happen. At
> NETDEV_REGISTER br->default_pvid is always == 1 as it's initialized by
> br_vlan_init() before that and at NETDEV_UNREGISTER it can be anything
> depending why it was called (if called due to NETDEV_REGISTER error
> it'll still be == 1, otherwise it could be any value changed during the
> device life time).
>
> For the demonstration below a small change to iproute2 for printing all fdb
> notifications is added, because it contained a workaround not to show
> entries with ifindex == 0.
> Command executed while monitoring: $ ip l add br0 type bridge
> Before (both ifindex and master == 0):
> $ bridge monitor fdb
> 36:7e:8a:b3:56:ba dev * vlan 1 master * permanent
>
> After (proper br0 ifindex):
> $ bridge monitor fdb
> e6:2a:ae:7a:b7:48 dev br0 vlan 1 master br0 permanent
>
> v4: move only the default pvid init/deinit to NETDEV_REGISTER/UNREGISTER
> v3: send the correct v2 patch with all changes (stub should return 0)
> v2: on error in br_vlan_init set br->vlgrp to NULL and return 0 in
>     the br_vlan_bridge_event stub when bridge vlans are disabled
>
> [0] https://bugzilla.kernel.org/show_bug.cgi?id=204389
>
> Reported-by: michael-dev <michael-dev@fami-braun.de>
> Fixes: 5be5a2df40f0 ("bridge: Add filtering support for default_pvid")
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Acked-by: Roopa Prabhu <roopa@cumulusnetworks.com>
