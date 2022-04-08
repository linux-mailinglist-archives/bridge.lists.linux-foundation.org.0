Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517F64F99AB
	for <lists.bridge@lfdr.de>; Fri,  8 Apr 2022 17:41:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FDCA400A6;
	Fri,  8 Apr 2022 15:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RL7-yVJh3Q7P; Fri,  8 Apr 2022 15:41:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 09C5040432;
	Fri,  8 Apr 2022 15:41:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CB1DFC0088;
	Fri,  8 Apr 2022 15:41:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4EB65C002C
 for <bridge@lists.linux-foundation.org>; Fri,  8 Apr 2022 15:41:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C1DD60E02
 for <bridge@lists.linux-foundation.org>; Fri,  8 Apr 2022 15:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Edy8OuuWYdAa for <bridge@lists.linux-foundation.org>;
 Fri,  8 Apr 2022 15:41:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8AAE60D62
 for <bridge@lists.linux-foundation.org>; Fri,  8 Apr 2022 15:41:33 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 h23-20020a17090a051700b001c9c1dd3acbso10041518pjh.3
 for <bridge@lists.linux-foundation.org>; Fri, 08 Apr 2022 08:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EPGVb31c9VYtNFxiQ9pmgvnPXTLkuL0jOYpmVyuPVWQ=;
 b=Kay8uKFyZQV4THgnBTgMBMQFvRcWqk4YW5Z+fwvXEGnN7+7x0t3XiZ2EogACfdRSKP
 PvvXpZ1YayQ+cP3ehpiLWc6jbGDZgdku3bvPOI7APZ+QtfPbxmzCai3MiTRzMGCSxkT0
 piCdWho3gYkEpwxd7gGiem+hX/2LR3zb2Cwy3vPaoNPAKbZVopNsgqdSDjc7e8WNE0QS
 V3hd2+r9//XerfszuVvPiCobig9SBmiS4A21touEG7/5+Tc0now7QK5EAbQCURSgM18r
 7aix9lQZhmeaWYCZB1hPMdQ4+tlptsNzxEHD/pvlSc2myeQxVfXQ+BUptzL1eP43ad6h
 6K7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EPGVb31c9VYtNFxiQ9pmgvnPXTLkuL0jOYpmVyuPVWQ=;
 b=IooiTFvrh9/7t4z7oP5LYZeVoFZJ8skkfev7ZWhlMq5jhgpbKEAyRrO0pOltgH31iY
 5BTkZesq/YqhnnZQVSlJKRyb+idlGtfVqpVH3HrOXOJ1gA3E9N4CwWO+TWrANHx0iA1z
 qSUhjJgbx2GCkpu4jHQF637hZw19Tp8X1IR5Dx+v9xelCTdSaYbMm2QB4NLS7shtybKK
 DX2YtjMM8ZPVLQ5+6hrHq6N1MBCW943F6yBcJsnp2wtsSml6VeVic/VtxS/8J73MTM13
 dvT8eQknbD6bxsRUdki+pYCzqq5U+eB1VqZjdEXxjs8rZ9jOBJJH5CyR0evJLzq/MyJh
 qLwg==
X-Gm-Message-State: AOAM533jslT+devpBmid/JczRpspIp0HxggEAcduWi9J5hkLnj31gBjg
 pIpjys9/Bt23WkeCp2uEuBGXmA==
X-Google-Smtp-Source: ABdhPJxbizw1hXUaB/fVdj2Ts0pkOBT5gHbGvFL00A+AVIFC8+lE3K2lSXim22VBGUXLB8Lod9EAQQ==
X-Received: by 2002:a17:902:6b8b:b0:14d:66c4:f704 with SMTP id
 p11-20020a1709026b8b00b0014d66c4f704mr20243985plk.53.1649432493311; 
 Fri, 08 Apr 2022 08:41:33 -0700 (PDT)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 s141-20020a632c93000000b0038134d09219sm22356564pgs.55.2022.04.08.08.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 08:41:32 -0700 (PDT)
Date: Fri, 8 Apr 2022 08:41:29 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20220408084129.26944522@hermes.local>
In-Reply-To: <20220407194859.1e897edf@kernel.org>
References: <20220407151217.GA8736@codemonkey.org.uk>
 <20220407091640.1551b9d4@hermes.local>
 <20220407194859.1e897edf@kernel.org>
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

On Thu, 7 Apr 2022 19:48:59 -0700
Jakub Kicinski <kuba@kernel.org> wrote:

> On Thu, 7 Apr 2022 09:16:40 -0700 Stephen Hemminger wrote:
> > > I was wondering why the llc code was getting compiled and it turned out
> > > to be because I had bridging enabled. It turns out to only needs it for
> > > a single function (llc_mac_hdr_init).  
> 
> > > +static inline int llc_mac_hdr_init(struct sk_buff *skb,
> > > +				   const unsigned char *sa, const unsigned char *da)
> > > +{
> > > +	int rc = -EINVAL;
> > > +
> > > +	switch (skb->dev->type) {
> > > +	case ARPHRD_ETHER:
> > > +	case ARPHRD_LOOPBACK:
> > > +		rc = dev_hard_header(skb, skb->dev, ETH_P_802_2, da, sa,
> > > +				     skb->len);
> > > +		if (rc > 0)
> > > +			rc = 0;
> > > +		break;
> > > +	default:
> > > +		break;
> > > +	}
> > > +	return rc;
> > > +}
> > > +
> > >    
> 
> nit: extra new line
> 
> > > -int llc_mac_hdr_init(struct sk_buff *skb,
> > > -		     const unsigned char *sa, const unsigned char *da)
> > > -{
> > > -	int rc = -EINVAL;
> > > -
> > > -	switch (skb->dev->type) {
> > > -	case ARPHRD_ETHER:
> > > -	case ARPHRD_LOOPBACK:
> > > -		rc = dev_hard_header(skb, skb->dev, ETH_P_802_2, da, sa,
> > > -				     skb->len);
> > > -		if (rc > 0)
> > > -			rc = 0;
> > > -		break;
> > > -	default:
> > > -		break;
> > > -	}
> > > -	return rc;
> > > -}  
> 
> There's also an EXPORT somewhere in this file that has to go.
> 
> > >  /**
> > >   *	llc_build_and_send_ui_pkt - unitdata request interface for upper layers
> > >   *	@sap: sap to use    
> > 
> > You may break other uses of LLC.
> > 
> > Why not open code as different function.  I used the llc stuff because there
> > were multiple copies of same code (DRY).  
> 
> I didn't quite get what you mean, Stephen, would you mind restating?


Short answer: it was idea that didn't pan out.

Suggestion: get rid of using LLC  in bridge and just rewrite that one place.
