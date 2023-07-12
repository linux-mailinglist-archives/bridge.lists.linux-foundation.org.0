Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF15750B86
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 16:58:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B5CD40BB9;
	Wed, 12 Jul 2023 14:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B5CD40BB9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256 header.s=amazon201209 header.b=Uo670bUU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1uZp-aeDcdt; Wed, 12 Jul 2023 14:58:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 674AC41589;
	Wed, 12 Jul 2023 14:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 674AC41589
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05687C0DD4;
	Wed, 12 Jul 2023 14:58:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 955C6C0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:58:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33E59611E8
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:58:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33E59611E8
Authentication-Results: smtp3.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=Uo670bUU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AGNqwIN6bhNi for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 14:58:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26571611E7
Received: from smtp-fw-80008.amazon.com (smtp-fw-80008.amazon.com
 [99.78.197.219])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26571611E7
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1689173897; x=1720709897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zcW5kz8PrZMlxYxJAbQQUtUE+T2XGM7/jXVNUV8g9aM=;
 b=Uo670bUUj+6UKEwBrbteAwQpkYMO7mt8hISttAu2VhJWXt0CzKKtvBbj
 5yi50IkoWjsITAn1Bn80xM1rJqISFFIwuuNeGB10oz1ynN7yVwLdJO+yg
 seZS+JY+C5aRWC3m93JoR+JMsNi4yqv1p9SfEnyYDHL6PgvjQIn9+s4fH E=;
X-IronPort-AV: E=Sophos;i="6.01,199,1684800000"; d="scan'208";a="15918877"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO
 email-inbound-relay-pdx-2c-m6i4x-f7c754c9.us-west-2.amazon.com)
 ([10.25.36.210]) by smtp-border-fw-80008.pdx80.corp.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jul 2023 14:58:14 +0000
Received: from EX19MTAUWC001.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
 by email-inbound-relay-pdx-2c-m6i4x-f7c754c9.us-west-2.amazon.com (Postfix)
 with ESMTPS id 19BB040DAA; Wed, 12 Jul 2023 14:58:14 +0000 (UTC)
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Wed, 12 Jul 2023 14:58:13 +0000
Received: from 88665a182662.ant.amazon.com (10.119.181.74) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1118.30;
 Wed, 12 Jul 2023 14:58:10 +0000
To: <idosch@idosch.org>
Date: Wed, 12 Jul 2023 07:58:02 -0700
Message-ID: <20230712145802.726-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <ZK69NDM60+N0TTFh@shredder>
References: <ZK69NDM60+N0TTFh@shredder>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.119.181.74]
X-ClientProxiedBy: EX19D036UWC001.ant.amazon.com (10.13.139.233) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Precedence: Bulk
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuni1840@gmail.com,
 edumazet@google.com, kuniyu@amazon.com, ebiederm@xmission.com, kuba@kernel.org,
 hcoin@quietfountain.com, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v1 net] bridge: Return an error when enabling
	STP in netns.
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
From: Kuniyuki Iwashima via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Kuniyuki Iwashima <kuniyu@amazon.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

From: Ido Schimmel <idosch@idosch.org>
Date: Wed, 12 Jul 2023 17:48:20 +0300
> On Tue, Jul 11, 2023 at 04:54:15PM -0700, Kuniyuki Iwashima wrote:
> > When we create an L2 loop on a bridge in netns, we will see packets storm
> > even if STP is enabled.
> > 
> >   # unshare -n
> >   # ip link add br0 type bridge
> >   # ip link add veth0 type veth peer name veth1
> >   # ip link set veth0 master br0 up
> >   # ip link set veth1 master br0 up
> >   # ip link set br0 type bridge stp_state 1
> >   # ip link set br0 up
> >   # sleep 30
> >   # ip -s link show br0
> >   2: br0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
> >       link/ether b6:61:98:1c:1c:b5 brd ff:ff:ff:ff:ff:ff
> >       RX: bytes  packets  errors  dropped missed  mcast
> >       956553768  12861249 0       0       0       12861249  <-. Keep
> >       TX: bytes  packets  errors  dropped carrier collsns     |  increasing
> >       1027834    11951    0       0       0       0         <-'   rapidly
> > 
> > This is because llc_rcv() drops all packets in non-root netns and BPDU
> > is dropped.
> > 
> > Let's show an error when enabling STP in netns.
> > 
> >   # unshare -n
> >   # ip link add br0 type bridge
> >   # ip link set br0 type bridge stp_state 1
> >   Error: bridge: STP can't be enabled in non-root netns.
> > 
> > Note this commit will be reverted later when we namespacify the whole LLC
> > infra.
> > 
> > Fixes: e730c15519d0 ("[NET]: Make packet reception network namespace safe")
> > Suggested-by: Harry Coin <hcoin@quietfountain.com>
> 
> I'm not sure that's accurate. I read his response in the link below and
> he says "I'd rather be warned than blocked" and "But better warned and
> awaiting a fix than blocked", which I agree with. The patch has the
> potential to cause a lot of regressions, but without actually fixing the
> problem.
> 
> How about simply removing the error [1]? Since iproute2 commit
> 844c37b42373 ("libnetlink: Handle extack messages for non-error case"),
> it can print extack warnings and not only errors. With the diff below:

This is good to know and I also prefer this approach!
I'll post v2.

Thanks!


> 
>  # unshare -n 
>  # ip link add name br0 type bridge
>  # ip link set dev br0 type bridge stp_state 1
>  Warning: bridge: STP can't be enabled in non-root netns.
>  # echo $?
>  0
> 
> [1]
> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> index a807996ac56b..b5143de37938 100644
> --- a/net/bridge/br_stp_if.c
> +++ b/net/bridge/br_stp_if.c
> @@ -201,10 +201,8 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
>  {
>         ASSERT_RTNL();
>  
> -       if (!net_eq(dev_net(br->dev), &init_net)) {
> +       if (!net_eq(dev_net(br->dev), &init_net))
>                 NL_SET_ERR_MSG_MOD(extack, "STP can't be enabled in non-root netns");
> -               return -EINVAL;
> -       }
>  
>         if (br_mrp_enabled(br)) {
>                 NL_SET_ERR_MSG_MOD(extack,
> 
> > Link: https://lore.kernel.org/netdev/0f531295-e289-022d-5add-5ceffa0df9bc@quietfountain.com/
> > Signed-off-by: Kuniyuki Iwashima <kuniyu@amazon.com>
> > ---
> >  net/bridge/br_stp_if.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> > index 75204d36d7f9..a807996ac56b 100644
> > --- a/net/bridge/br_stp_if.c
> > +++ b/net/bridge/br_stp_if.c
> > @@ -201,6 +201,11 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
> >  {
> >  	ASSERT_RTNL();
> >  
> > +	if (!net_eq(dev_net(br->dev), &init_net)) {
> > +		NL_SET_ERR_MSG_MOD(extack, "STP can't be enabled in non-root netns");
> > +		return -EINVAL;
> > +	}
> > +
> >  	if (br_mrp_enabled(br)) {
> >  		NL_SET_ERR_MSG_MOD(extack,
> >  				   "STP can't be enabled if MRP is already enabled");
> > -- 
> > 2.30.2
