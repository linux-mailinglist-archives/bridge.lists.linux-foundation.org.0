Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F22EF686DDB
	for <lists.bridge@lfdr.de>; Wed,  1 Feb 2023 19:25:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 086DA8135E;
	Wed,  1 Feb 2023 18:25:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 086DA8135E
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=CV7kgIE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zzo_L7sIoX-0; Wed,  1 Feb 2023 18:25:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 86FD5812E6;
	Wed,  1 Feb 2023 18:25:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86FD5812E6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 25ABAC007C;
	Wed,  1 Feb 2023 18:25:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 78396C002B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 18:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 25B534091C
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 18:25:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25B534091C
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=CV7kgIE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZ_msNCY5q2S for <bridge@lists.linux-foundation.org>;
 Wed,  1 Feb 2023 18:25:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DB6140739
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DB6140739
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 18:25:01 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 32BA732009B8;
 Wed,  1 Feb 2023 13:24:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 01 Feb 2023 13:24:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1675275896; x=1675362296; bh=rdu/cSdrf95lHEkaUXGHj3bo8fqo
 VL5yH9BapQUMiuo=; b=CV7kgIE3AZZdHao+BNdk6vds8PWdGb3GcGOmZzU7IXG4
 MRbrZZesw1p98Ub/ppz8lTBdsxADyPJkU3A9oOBRlmSLnUYYEfawHosLNeGs3Vvt
 j4B92h9sAxP7TiHk+PTutosjwxnvfNEOmHLThojboAcyjXR/PMp5gTv4n/HbF2Jq
 ixgm+8poal0ku5r9xnqFLtZFDEMxMCzHVsTJLmrqmPPxnaVCL3WJr5Drpsqo6ysq
 VoAI/Zc8yXnKhBAWv+FKOW+a7rYlchL/I4Hq6+0/599vXq6rlD7ez8PQAsW/9nQZ
 qo0Sx2oLBor+Jo8j9S37B16eohf7/INduBpNSUOUXQ==
X-ME-Sender: <xms:d67aYy4qxwFGX87O-G2B7M5zxfNZ74Y9mtMbxo8516e9D8bhKTKFzQ>
 <xme:d67aY75lEMCPrxc4H9pul-2v-J1jgKXwNmZZXLgBjL380mj4lQ3INXR-fJtD_gBjc
 aqayBisF96gOgI>
X-ME-Received: <xmr:d67aYxde7AhmFYf5geMb6OVzl7TZpePk5m93x3K5Karc8BF_O6hFyvRjtMlSh9bC0gMvlifcnI-6pA7b1CCjIPnZnTU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudefiedguddufecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkugho
 ucfutghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrg
 htthgvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeej
 geeghfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:d67aY_IlRB3S5TvZlz0o0JCqGYk-kekSFXHC1k4gLs57JEDGrwOmHA>
 <xmx:d67aY2JYd8Oqu_8vARdEyvRdvd2bj94vUMckvqhcmT51VKOrxJJe9w>
 <xmx:d67aYwxKd2oRs3vn-UItsemryABabt3_l0YJN5FmVULsC7yP393h_w>
 <xmx:eK7aY81CA2_3n8FClr5BuI9CkoGQUyvdWQ8klVgJX5u4IrRI1wOKpw>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Feb 2023 13:24:54 -0500 (EST)
Date: Wed, 1 Feb 2023 20:24:51 +0200
From: Ido Schimmel <idosch@idosch.org>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <Y9qucziByvXsx5Q0@shredder>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-5-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130173429.3577450-5-netdev@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 4/5] net: bridge: ensure FDB offloaded
 flag is handled as needed
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

On Mon, Jan 30, 2023 at 06:34:28PM +0100, Hans J. Schultz wrote:
> Since user added entries in the bridge FDB will get the BR_FDB_OFFLOADED
> flag set, we do not want the bridge to age those entries and we want the
> entries to be deleted in the bridge upon an SWITCHDEV_FDB_DEL_TO_BRIDGE
> event.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> ---
>  net/bridge/br_fdb.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index e69a872bfc1d..b0c23a72bc76 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -537,6 +537,7 @@ void br_fdb_cleanup(struct work_struct *work)
>  		unsigned long this_timer = f->updated + delay;
>  
>  		if (test_bit(BR_FDB_STATIC, &f->flags) ||
> +		    test_bit(BR_FDB_OFFLOADED, &f->flags) ||
>  		    test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &f->flags)) {
>  			if (test_bit(BR_FDB_NOTIFY, &f->flags)) {
>  				if (time_after(this_timer, now))

Looks correct

> @@ -1465,7 +1466,9 @@ int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
>  	spin_lock_bh(&br->hash_lock);
>  
>  	fdb = br_fdb_find(br, addr, vid);
> -	if (fdb && test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags))
> +	if (fdb &&
> +	    (test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags) ||
> +	     test_bit(BR_FDB_OFFLOADED, &fdb->flags)))

This also looks correct, but the function name is not really accurate
anymore. I guess you can keep it as-is unless someone has a better name

>  		fdb_delete(br, fdb, swdev_notify);
>  	else
>  		err = -ENOENT;
> -- 
> 2.34.1
> 
