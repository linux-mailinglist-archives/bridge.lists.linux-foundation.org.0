Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7F682619
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 22:33:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 47A13EA1;
	Mon,  5 Aug 2019 20:33:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3FBFAAE
	for <bridge@lists.linux-foundation.org>;
	Mon,  5 Aug 2019 20:33:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B299E82F
	for <bridge@lists.linux-foundation.org>;
	Mon,  5 Aug 2019 20:33:37 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id D570E15432775;
	Mon,  5 Aug 2019 13:33:36 -0700 (PDT)
Date: Mon, 05 Aug 2019 13:33:36 -0700 (PDT)
Message-Id: <20190805.133336.916443336565287148.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190802105736.26767-1-nikolay@cumulusnetworks.com>
References: <0a015a21-c1ae-e275-e675-431f08bece86@cumulusnetworks.com>
	<20190802105736.26767-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Mon, 05 Aug 2019 13:33:37 -0700 (PDT)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, michael-dev@fami-braun.de
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

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Fri,  2 Aug 2019 13:57:36 +0300

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

Applied and queued up for -stable, thanks.
