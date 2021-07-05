Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 808613BBA9F
	for <lists.bridge@lfdr.de>; Mon,  5 Jul 2021 11:57:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3061482AF8;
	Mon,  5 Jul 2021 09:57:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2NdTMEWzAry; Mon,  5 Jul 2021 09:57:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AE513829C5;
	Mon,  5 Jul 2021 09:57:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 728B2C0022;
	Mon,  5 Jul 2021 09:57:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6F0CEC000E
 for <bridge@lists.linux-foundation.org>; Mon,  5 Jul 2021 09:57:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50D36400C6
 for <bridge@lists.linux-foundation.org>; Mon,  5 Jul 2021 09:57:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emu_tmSBA_SV for <bridge@lists.linux-foundation.org>;
 Mon,  5 Jul 2021 09:57:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 886E9400B5
 for <bridge@lists.linux-foundation.org>; Mon,  5 Jul 2021 09:57:31 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id he13so9651896ejc.11
 for <bridge@lists.linux-foundation.org>; Mon, 05 Jul 2021 02:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UywVHfIXA8Il15KCHtfEgZv5xfnhEZ34vLyTargXKlk=;
 b=TkeqJE48gZCnOXcVOxTCrulvm2g32F0N95QRYIoHW8IUD1AEDNjNqxLopGWCXJc9vH
 Bs8lRfpcJpieitfTEOJ86r1RIsZqRRaiPMWTTYQougcp2aFv0I0cArcZOK0J+CzoE56M
 aUxSqECi9itQJP1u61fNWMplURkFXuG3W2YIyNPMBVh9aQ4Wbo5b2WYx3k2r+XSEct5e
 Z2SGaeTIxGNX/AdHR7PqPmobVQUolTpkNPpCPC0h8opJGonwl1af9yDM0t54/LaJmz0W
 ty27zSlpkch6V65rdOaEF6cTEjWMpcZ8tKQmkfpq+wtU7ueoxoxB6tHQY28JYNEWpXKW
 1QAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UywVHfIXA8Il15KCHtfEgZv5xfnhEZ34vLyTargXKlk=;
 b=oDPWx4kBqEbD0Cctnnqp35s7qXAlvaHZCGqvQ3P4y9DSsZPIGl/HjbuBSZ9c0qVaAN
 +KMC7/hWlVK5uED0Kx6H2mK83NjvtMn/xq/9KUZ/F+JBX+FjopKHDmkNm5eVynqjvKvu
 VGIseclaeYKUvm/+GWA2PMHjhZ0N5c7oIIHjnlRBicumAEsvYGZT+/mHakaIOGyA/5zR
 6fn3T8N/s+Ylfqpw9j5brrPz1M2YB54zEIZpa1UUc1axFDZBnlkqpRZSVhg5XurXDsaA
 kD3amPoD5uhXdjygeIhEii2XDSM5pKlTrMz/Gr+22LEaRVm8mRR+8JtMqDWZbHRZ2ctd
 L+Ow==
X-Gm-Message-State: AOAM532u17pmsRNI4/gVnQpRg6lUCHhAVGMp5gxU8/r3Ys65YUCnOoQZ
 /FhuEIwa/MZid3oL/aoD+dI=
X-Google-Smtp-Source: ABdhPJzLp/vyjce7xVcMJsWfJpmfULAy25MDSrrAaO9oSanq+e597oeQJw7jLVzGFCqDX2T8DKfbCg==
X-Received: by 2002:a17:907:94c4:: with SMTP id
 dn4mr12276614ejc.363.1625479049653; 
 Mon, 05 Jul 2021 02:57:29 -0700 (PDT)
Received: from skbuf ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id p23sm5139087edt.71.2021.07.05.02.57.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 02:57:29 -0700 (PDT)
Date: Mon, 5 Jul 2021 12:57:27 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210705095727.w7iigb3goaorzef5@skbuf>
References: <20210703115705.1034112-1-vladimir.oltean@nxp.com>
 <20210705042018.137390-1-dqfext@gmail.com>
 <87v95p6u0r.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v95p6u0r.fsf@waldekranz.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Ido Schimmel <idosch@idosch.org>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Alexander Duyck <alexander.duyck@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, DENG Qingfang <dqfext@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH v2 net-next 00/10] Allow forwarding for the
 software bridge data path to be offloaded to capable devices
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

On Mon, Jul 05, 2021 at 10:32:04AM +0200, Tobias Waldekranz wrote:
> > Many DSA taggers use port bit field in their TX tags, which allows
> > replication in hardware. (multiple bits set = send to multiple ports)
> > I wonder if the tagger API can be updated to support this.
>
> I think you could, but it would be tricky.
>
> The bridge does not operate using vectors/bitfields, rather it is
> procedural code that you have to loop through before knowing the set of
> destination ports.
>
> This series just sends the skb to the first port in the hardware domain
> and trusts the HW to calculate the same port set as the code in
> br_forward.c would have.
>
> To do what you suggest, the bridge would have to translate each nbp into
> a position in a bitfield (or call out to the underlying driver to do it)
> as it is looping through ports, then send the aggregated mask along with
> the skb. Knowing if a port is the first one you have come across for a
> given domain is very easy (just maintain a bitfield), knowing if it is
> the last one is harder. So you would likely end up having to queue up
> the actual transmission until after the loop has been executed, which
> hard to combine with the "lazy cloning" that you really want to get
> decent performance.

In addition to changing the bridge in order to get the entire bit mask,
one also has to somehow propagate that bit mask per skb down to the
driver which might be tricky in itself. There is currently no bridge
specific data structure passed between the bridge and the switchdev
driver, it is just the struct net_device *sb_dev. A hacky solution I
might imagine is for the bridge to kzalloc() a small data structure
like:

struct bridge_fwd_offload_accel_priv {
	struct net_device *sb_dev; /* Must be first! */
	unsigned long port_mask;
};

and call as follows:

int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct bridge_fwd_offload_accel_priv *accel_priv = NULL;

	if (br_switchdev_accels_skb(skb)) {
		accel_priv = kzalloc(sizeof(*accel_priv), GFP_ATOMIC);
		if (!accel_priv)
			return -ENOMEM;

		accel_priv->sb_dev = BR_INPUT_SKB_CB(skb)->brdev;
		accel_priv->port_mask = port_mask;
	}

	dev_queue_xmit_accel(skb, accel_priv);
}

This way, the code in net/core/dev.c can be left unmodified. We give it
an accel_priv pointer but it can think it is only looking at a sb_dev
pointer, since that is the first element in the structure.

But then the switchdev driver must kfree(accel_priv) in the xmit function.

Not really nice, but for a cuter solution, I think we would need to extend struct sk_buff.
