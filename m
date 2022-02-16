Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECC94BA408
	for <lists.bridge@lfdr.de>; Thu, 17 Feb 2022 16:12:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D602D83E7A;
	Thu, 17 Feb 2022 15:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T2rRIICWDfop; Thu, 17 Feb 2022 15:12:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3CD2C83E56;
	Thu, 17 Feb 2022 15:12:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DC2DDC0039;
	Thu, 17 Feb 2022 15:12:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 08276C000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5CE04036F
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=armlinux.org.uk
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RWwWxZutTuf6 for <bridge@lists.linux-foundation.org>;
 Wed, 16 Feb 2022 13:49:30 +0000 (UTC)
X-Greylist: delayed 00:10:08 by SQLgrey-1.8.0
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk
 [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA04440125
 for <bridge@lists.linux-foundation.org>; Wed, 16 Feb 2022 13:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tjvtg6e6rfEBajxf7gEQ25jMTSa3cr331jVbNJooOA0=; b=fRzh+dlUNwjRlxwNg3p81SGp3B
 iStgmRxGiJO6bKTyqJwOLl8g3KNUsuNbBJrLRQ7UilHK2F8X5sVUfqqLvgT4IA+wsrJTra5I0v0qY
 dyZ7dqySINcTzpwqnM0bGq/bbzCr879Q3scd+JS3+0YPwLeEp9erYpO0YXsup7ValRWBOpdquQBjz
 iFOyTAvMnuNfMkyx+WuYaKrh39IiHrhOcAKz5cLMGwOkIAMjOHDgej31lVHn85+QZtw0iya38+4ti
 pbyviRSYF7YV5Wuln6MXHB4eQXiXuZyPeAkYP2kV5rkjGEdQPeho+Dsp3yOU3Ccq5Yqw6OonUeJHf
 BSJUVR5g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57284)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1nKKWP-0003ue-5J; Wed, 16 Feb 2022 13:39:05 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1nKKWK-00006Q-7J; Wed, 16 Feb 2022 13:39:00 +0000
Date: Wed, 16 Feb 2022 13:39:00 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <Ygz+dNz1YvyiFpxa@shell.armlinux.org.uk>
References: <20220216132934.1775649-1-tobias@waldekranz.com>
 <20220216132934.1775649-10-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220216132934.1775649-10-tobias@waldekranz.com>
X-Mailman-Approved-At: Thu, 17 Feb 2022 15:12:09 +0000
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 9/9] net: dsa: mv88e6xxx: MST Offloading
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

Hi,

On Wed, Feb 16, 2022 at 02:29:34PM +0100, Tobias Waldekranz wrote:
> +static int mv88e6xxx_sid_new(struct mv88e6xxx_chip *chip, u8 *sid)
> +{
> +	DECLARE_BITMAP(busy, MV88E6XXX_N_SID) = { 0 };
> +	struct mv88e6xxx_mst *mst;
> +
> +	set_bit(0, busy);
> +
> +	list_for_each_entry(mst, &chip->msts, node) {
> +		set_bit(mst->stu.sid, busy);
> +	}

Do you need these set_bit() operations to be atomic? Would __set_bit()
produce better code?

> +
> +	*sid = find_first_zero_bit(busy, MV88E6XXX_N_SID);
> +
> +	return (*sid >= mv88e6xxx_max_sid(chip)) ? -ENOSPC : 0;

Hmm. Let's hope that mv88e6xxx_max_sid() never returns a value larger
than MV88E6XXX_N_SID.

> +}
> +
...
> +static int mv88e6xxx_sid_get(struct mv88e6xxx_chip *chip, struct net_device *br,
> +			     u16 mstid, u8 *sid)
> +{
> +	struct mv88e6xxx_mst *mst;
> +	int err;
> +
> +	if (!br)
> +		return 0;
> +
> +	if (!mv88e6xxx_has_stu(chip))
> +		return -EOPNOTSUPP;
> +
> +	list_for_each_entry(mst, &chip->msts, node) {
> +		if (mst->br == br && mst->mstid == mstid) {
> +			refcount_inc(&mst->refcnt);
> +			*sid = mst->stu.sid;
> +			return 0;
> +		}
> +	}
> +
> +	err = mv88e6xxx_sid_new(chip, sid);
> +	if (err)
> +		return err;
> +
> +	mst = kzalloc(sizeof(*mst), GFP_KERNEL);
> +	if (!mst)
> +		return -ENOMEM;
> +
> +	INIT_LIST_HEAD(&mst->node);

There is no need to initialise the node if you're then going to be
adding it to the list.

> +	refcount_set(&mst->refcnt, 1);
> +	mst->br = br;
> +	mst->mstid = mstid;
> +	mst->stu.valid = true;
> +	mst->stu.sid = *sid;
> +	list_add_tail(&mst->node, &chip->msts);
> +	return mv88e6xxx_stu_loadpurge(chip, &mst->stu);

I haven't checked what the locking is here - I hope it's not possible
for two of these to run concurrently.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
