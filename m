Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B52662262
	for <lists.bridge@lfdr.de>; Mon,  9 Jan 2023 11:02:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BDE44056F;
	Mon,  9 Jan 2023 10:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BDE44056F
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=FK/6LiCc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DnchN4Ir2gc4; Mon,  9 Jan 2023 10:02:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3CA6C4056B;
	Mon,  9 Jan 2023 10:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CA6C4056B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CC331C007B;
	Mon,  9 Jan 2023 10:02:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 45CF0C002D
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 10:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 181A0815AC
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 10:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 181A0815AC
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=FK/6LiCc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMRW3n4074Mq for <bridge@lists.linux-foundation.org>;
 Mon,  9 Jan 2023 10:02:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3848F81585
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3848F81585
 for <bridge@lists.linux-foundation.org>; Mon,  9 Jan 2023 10:02:41 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id tz12so18686446ejc.9
 for <bridge@lists.linux-foundation.org>; Mon, 09 Jan 2023 02:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=631yiMfd/HSHyv7vF2uoZkf1bP44ApXazpR4vBm2RS0=;
 b=FK/6LiCca2iJVfpTUna4Ww6HscuDHHrb0lOds2yd33X2MBsF/BH4Wc7PQPwBisKShr
 I8VO/kU7HFssvgkbvUFCoXm30lO5msX4+rqYLDj2cXu0JkkUAkeiQRwMMku4NIghMpcS
 hOeh//p3hVDZjrvjYfNpHaHPoAm8cZcyqvU1z9pBJZwIp5LiZZEwRNdmW8WW55CFfERJ
 Y59m8Okr/Frg4EZTfmRVIGSDG/WtE3fyX1FMz+wB3gZqdxyw7xY6LdWd2xSiK4TtvlcX
 WEZ/CoYq6TBFB4nwbO275ChseLUfZS+m3sMIpeDHIJ5K31xg8xXQBRrXiGRvSNTSYezb
 d9nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=631yiMfd/HSHyv7vF2uoZkf1bP44ApXazpR4vBm2RS0=;
 b=h8x5L38XmVJ+NMYtQXr3NjJJlBgu5SnUAcxPiiVFR1C/p70/9EYFemsBS6Mkq04qs8
 Mhu4b44gG6voILSUbA/w6BLKzezKhT6tUbcQBKx8+DQ8eLh5pGLVGJ+cN/KM1RQfY52a
 x0KoDY1vKwqYvKprXLgEmc+SEyT1j4vOEUTeIQVM0BoVwWrXQwCae1jR9o3V8wQI1tKE
 xHfWAsYw5huKz5HdbZG+6+BCOvJdzRBu3/zsSh5kasVBHbhEacYLqDuB2ITZoXLnmysH
 MWNprGbThnPxWFVLFeWtwQllpEWEkhOTDWFraLu9AoR/HL+AGLmSZ9Q8Od0AmwssCgev
 QATQ==
X-Gm-Message-State: AFqh2kr4YgWOtFb+bMdpxHP/rVIF9uIKp7r6VFCkClPr4XxwbDIyZxs2
 S3ow2BDvcyTGUV52XBlnOXU=
X-Google-Smtp-Source: AMrXdXvmdUPw+XJr6Gr9gFazADBm3h26Wc1cWSNGAb3b3Rq+z3ppk+8NS1YvXcORhB5AikniA0/7hg==
X-Received: by 2002:a17:907:6f09:b0:7c1:37:6d5e with SMTP id
 sy9-20020a1709076f0900b007c100376d5emr35230503ejc.2.1673258559272; 
 Mon, 09 Jan 2023 02:02:39 -0800 (PST)
Received: from skbuf ([188.27.185.38]) by smtp.gmail.com with ESMTPSA id
 b21-20020a17090630d500b0084f7d38713esm94403ejb.108.2023.01.09.02.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jan 2023 02:02:38 -0800 (PST)
Date: Mon, 9 Jan 2023 12:02:36 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20230109100236.euq7iaaorqxrun7u@skbuf>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-2-tobias@waldekranz.com>
 <Y7vK4T18pOZ9KAKE@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y7vK4T18pOZ9KAKE@shredder>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org, Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v5 net-next 01/15] net: bridge: mst: Multiple
 Spanning Tree (MST) mode
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

Hi Ido,

On Mon, Jan 09, 2023 at 10:05:53AM +0200, Ido Schimmel wrote:
> > +	if (on)
> > +		static_branch_enable(&br_mst_used);
> > +	else
> > +		static_branch_disable(&br_mst_used);
> 
> Hi,
> 
> I'm not actually using MST, but I ran into this code and was wondering
> if the static key usage is correct. The static key is global (not
> per-bridge), so what happens when two bridges have MST enabled and then
> it is disabled on one? I believe it would be disabled for both. If so,
> maybe use static_branch_inc() / static_branch_dec() instead?

Sounds about right. FWIW, br_switchdev_tx_fwd_offload does use
static_branch_inc() / static_branch_dec().
