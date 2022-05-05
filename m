Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8452E51CC7C
	for <lists.bridge@lfdr.de>; Fri,  6 May 2022 01:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D492C41622;
	Thu,  5 May 2022 23:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MgkgPbO7inP; Thu,  5 May 2022 23:07:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2D955415D4;
	Thu,  5 May 2022 23:07:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7071C0081;
	Thu,  5 May 2022 23:07:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EC808C002D
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 23:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD2E340541
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 23:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SSw2OgA04El4 for <bridge@lists.linux-foundation.org>;
 Thu,  5 May 2022 23:07:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 965674026E
 for <bridge@lists.linux-foundation.org>; Thu,  5 May 2022 23:07:23 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 a15-20020a17090ad80f00b001dc2e23ad84so9273794pjv.4
 for <bridge@lists.linux-foundation.org>; Thu, 05 May 2022 16:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g5cXeDu8DaghjPyC6aqZDOVhdWA9bOEPzkJFDyXbVYw=;
 b=JM3HrM5mf1MXDMk9qZA/27eaRt9EI5cKo5gvQL5cSQFvKvwL3ecWfxPXPA6PMNcuTE
 kvAqQzZYroc5BLuMF2afiztB0WB6V245fYsj4B6JvVVaIy+DZ+1L8qK4iHdV70r9bXKH
 ZZ5tpL9HIu+WhFizvAbBowsWOSMuxF2Y7pFq6WesK7sFDUHkCdq6bbCQklJNUPzbITv9
 vmsg68E9cjLT/IWlONpnfKsc0tB6AxSSlkbLTiMFYWdjx5Hkz/Z5HzLLMA4446W6C9yq
 Omrggo1CZCOwm7zk1mNGF7mtJ4iQD2z5akqFope1k1slyFyjZKDxZD/F2LL3HiSG3IIW
 0vLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g5cXeDu8DaghjPyC6aqZDOVhdWA9bOEPzkJFDyXbVYw=;
 b=Diat0I4JydJCN2r7Tt09fbPkxxhT6WrppCocSN/klY98Dqn9efdCQQoGwcSQ/JjERr
 S4aEzHnVioVvnFglyqtB5FrBhi3AKbbMUnEU/LCtwvk8BPzoRNUuZmHEvUOvVHphUIst
 SPTjiBLB0JMNcwxNM5pbJlyoPRi3BYdgJKBhCdvPRrAH8M+e38auYTvl57cS6QvRzdCR
 rD/B2LX9jZjQbZbcebk/6AAVpc8wR6aYzb/ZYFhyOTa1YqwxnMOkq14I9SQ1Am7YgVYp
 2inLhJPLkU0jYs7dx26ljbx1zYTZ8+pJT82IzvnUn+9T0blYUT0TlyuDSKrQthjVfLi3
 6MUw==
X-Gm-Message-State: AOAM532/RYpN5kTLp21UH3fuAUV+6DW4AwDVFtsC8RQnBMRcmNfKbkXq
 zB4PJaso01A1C6hs2D/JBzsRFA==
X-Google-Smtp-Source: ABdhPJx9r4dHBOtUb/Fnn0rmhE/3d2ws8/xrrGp1U+WrjPjXh/RE5A9D32opdQOwkK2YmgvshUPpMA==
X-Received: by 2002:a17:902:e74d:b0:15e:94f7:611e with SMTP id
 p13-20020a170902e74d00b0015e94f7611emr540547plf.37.1651792042915; 
 Thu, 05 May 2022 16:07:22 -0700 (PDT)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 om9-20020a17090b3a8900b001d5c571f487sm2076718pjb.25.2022.05.05.16.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 16:07:22 -0700 (PDT)
Date: Thu, 5 May 2022 16:07:20 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20220505160720.27358a55@hermes.local>
In-Reply-To: <20220505225904.342388-1-andrew@lunn.ch>
References: <20220505225904.342388-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@mellanox.com>, netdev <netdev@vger.kernel.org>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [Bridge] [PATCH RFC] net: bridge: Clear offload_fwd_mark when
 passing frame up bridge interface.
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

On Fri,  6 May 2022 00:59:04 +0200
Andrew Lunn <andrew@lunn.ch> wrote:

> It is possible to stack bridges on top of each other. Consider the
> following which makes use of an Ethernet switch:
> 
>        br1
>      /    \
>     /      \
>    /        \
>  br0.11    wlan0
>    |
>    br0
>  /  |  \
> p1  p2  p3
> 
> br0 is offloaded to the switch. Above br0 is a vlan interface, for
> vlan 11. This vlan interface is then a slave of br1. br1 also has
> wireless interface as a slave. This setup trunks wireless lan traffic
> over the copper network inside a VLAN.
> 
> A frame received on p1 which is passed up to the bridge has the
> skb->offload_fwd_mark flag set to true, indicating it that the switch
> has dealt with forwarding the frame out ports p2 and p3 as
> needed. This flag instructs the software bridge it does not need to
> pass the frame back down again. However, the flag is not getting reset
> when the frame is passed upwards. As a result br1 sees the flag,
> wrongly interprets it, and fails to forward the frame to wlan0.
> 
> When passing a frame upwards, clear the flag.
> 
> RFC because i don't know the bridge code well enough if this is the
> correct place to do this, and if there are any side effects, could the
> skb be a clone, etc.
> 
> Fixes: f1c2eddf4cb6 ("bridge: switchdev: Use an helper to clear forward mark")
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Bridging of bridges is not supposed to be allowed.
See:

bridge:br_if.c

	/* No bridging of bridges */
	if (dev->netdev_ops->ndo_start_xmit == br_dev_xmit) {
		NL_SET_ERR_MSG(extack,
			       "Can not enslave a bridge to a bridge");
		return -ELOOP;
	}
