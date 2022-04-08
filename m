Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 711734F8BFA
	for <lists.bridge@lfdr.de>; Fri,  8 Apr 2022 04:49:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFD0541C46;
	Fri,  8 Apr 2022 02:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w1SH7WJa7rh3; Fri,  8 Apr 2022 02:49:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3D08441C45;
	Fri,  8 Apr 2022 02:49:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06BCEC0082;
	Fri,  8 Apr 2022 02:49:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7056AC0012
 for <bridge@lists.linux-foundation.org>; Fri,  8 Apr 2022 02:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5834D41C46
 for <bridge@lists.linux-foundation.org>; Fri,  8 Apr 2022 02:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wTgML2q9yg_F for <bridge@lists.linux-foundation.org>;
 Fri,  8 Apr 2022 02:49:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C47B41C45
 for <bridge@lists.linux-foundation.org>; Fri,  8 Apr 2022 02:49:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7606261CDE;
 Fri,  8 Apr 2022 02:49:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96D7BC385A0;
 Fri,  8 Apr 2022 02:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649386140;
 bh=MoTQZqWDRmP60IMR3gk1tvBf4pwyjG0fN9vCUUQXZpg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WUSCjrtM2yniH6HNZyuC26xa7axjkpyVjG9HQ9H5faUYHwXUCVQ5G63l+9wnjxbjq
 H4bUqgChCeqqDrgDCMLJiAp7m0frf9MVrd9yy1VD0H6eKeOWWfAb8QRohwaoA8eEzm
 JxtYCa1sw+Mzo+H7nQhjI5Xs1rbDSso/F0t9lhYRQ1CtUDsDfAZnDcVI6D0G95QvFU
 w5Gc8NrhauOT4syIzMnjP6cMckI8qne8F/edsdKcuKxq9x5fGvHNPEN/z298P/q8lI
 x5wSCymS5TQJnVSVTUnoiok4bpdEeTI09L6dKKUUecooRiUuXWiyQBpu1bt9RTioLV
 lSYfslMZbIBiw==
Date: Thu, 7 Apr 2022 19:48:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <20220407194859.1e897edf@kernel.org>
In-Reply-To: <20220407091640.1551b9d4@hermes.local>
References: <20220407151217.GA8736@codemonkey.org.uk>
 <20220407091640.1551b9d4@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org, Dave Jones <davej@codemonkey.org.uk>,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
Subject: Re: [Bridge] [PATCH] decouple llc/bridge
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

On Thu, 7 Apr 2022 09:16:40 -0700 Stephen Hemminger wrote:
> > I was wondering why the llc code was getting compiled and it turned out
> > to be because I had bridging enabled. It turns out to only needs it for
> > a single function (llc_mac_hdr_init).

> > +static inline int llc_mac_hdr_init(struct sk_buff *skb,
> > +				   const unsigned char *sa, const unsigned char *da)
> > +{
> > +	int rc = -EINVAL;
> > +
> > +	switch (skb->dev->type) {
> > +	case ARPHRD_ETHER:
> > +	case ARPHRD_LOOPBACK:
> > +		rc = dev_hard_header(skb, skb->dev, ETH_P_802_2, da, sa,
> > +				     skb->len);
> > +		if (rc > 0)
> > +			rc = 0;
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +	return rc;
> > +}
> > +
> >  

nit: extra new line

> > -int llc_mac_hdr_init(struct sk_buff *skb,
> > -		     const unsigned char *sa, const unsigned char *da)
> > -{
> > -	int rc = -EINVAL;
> > -
> > -	switch (skb->dev->type) {
> > -	case ARPHRD_ETHER:
> > -	case ARPHRD_LOOPBACK:
> > -		rc = dev_hard_header(skb, skb->dev, ETH_P_802_2, da, sa,
> > -				     skb->len);
> > -		if (rc > 0)
> > -			rc = 0;
> > -		break;
> > -	default:
> > -		break;
> > -	}
> > -	return rc;
> > -}

There's also an EXPORT somewhere in this file that has to go.

> >  /**
> >   *	llc_build_and_send_ui_pkt - unitdata request interface for upper layers
> >   *	@sap: sap to use  
> 
> You may break other uses of LLC.
> 
> Why not open code as different function.  I used the llc stuff because there
> were multiple copies of same code (DRY).

I didn't quite get what you mean, Stephen, would you mind restating?
