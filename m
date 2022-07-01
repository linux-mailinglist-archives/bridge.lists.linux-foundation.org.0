Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0285636DD
	for <lists.bridge@lfdr.de>; Fri,  1 Jul 2022 17:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B53FD61415;
	Fri,  1 Jul 2022 15:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B53FD61415
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=AkKkSH90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7J4FdXXVWCOB; Fri,  1 Jul 2022 15:27:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4806B6144C;
	Fri,  1 Jul 2022 15:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4806B6144C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E10A5C0039;
	Fri,  1 Jul 2022 15:27:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 84496C002D
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 15:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5081261442
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 15:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5081261442
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xc4y8xu1Y7HD for <bridge@lists.linux-foundation.org>;
 Fri,  1 Jul 2022 15:27:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51CAB613F3
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 51CAB613F3
 for <bridge@lists.linux-foundation.org>; Fri,  1 Jul 2022 15:27:05 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id u12so4667041eja.8
 for <bridge@lists.linux-foundation.org>; Fri, 01 Jul 2022 08:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K0iZiXinEatv8xEcBISd59Ab8eNplLifK/KFllgmDfA=;
 b=AkKkSH90WBGW9spYSEFDjhuJfRAK1ihCSwwzha9d19mrwuRU2ZUQa5QaL9Mx5vKUSw
 0zHYHRn56sSlCNx6XxWOue2MBL05jvRsk9cfBCwzBROcGgURGosPCaCXTn0qhBMZhfjd
 e8zM93KjwIcl3oNi4eG7snL8BNEFwvunUQkQy7MncYAmYtgHXYDz62fxHPJuALmnTBYX
 27n96hX2Hn5khXgz0InQoSDBO1eb1oxxWeO6toAtc2AKzHG9jRWxxqeOt/NAk+2Gy/Kj
 uSRGoVa/M9Ct/sUVJfLqY1V9us0aLfTaUY8j6xMhhnRUy6h8v6WohYydD5/131WLXu2j
 vTFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K0iZiXinEatv8xEcBISd59Ab8eNplLifK/KFllgmDfA=;
 b=aCh0cGPg0h8wbdboluB06CrByr/3vaV93SjdcrRQEZFY58zUs3dhzV4W+SKgrRy3s5
 eykI/czHHFBpNa03unTA8uVvjOFgUkLuubHAxE6uHxA5tSj23pzPcazEQqWtxDKct6E3
 hm/a7dMtUpvtVCGzUMzQXNOKGOsG6445zDsNyyB0pNlGoNmB/iZl7da4M+F9fDgwSzCW
 o79VUg/kFwwpSin5bhborgc91JgQqxCz5xhvb14Bn8UUNfoLBf1rRNfOfAHmoZlYDMrO
 J1BcIgJi6/cB9ZEHKjcDlF4vAcDj2sp+pctl7vAkzw/61Ac5yRuagHdTo+D3b+mlVVS/
 B33Q==
X-Gm-Message-State: AJIora+y2gL04lCMObSwaNxpbLZWNBFvoEVEYkTx0p8AlJw1E+IkPGZI
 bUF74ONAN8yH3dSx+iwdRBU=
X-Google-Smtp-Source: AGRyM1vHhGWDNshk6+DsGFfXT4DAA7GcrZfk8btCkoCeO6zUxhUCOz4OsIdskGvX158HiUQC4IF3+Q==
X-Received: by 2002:a17:906:6146:b0:722:f8c4:ec9b with SMTP id
 p6-20020a170906614600b00722f8c4ec9bmr15708406ejl.708.1656689223488; 
 Fri, 01 Jul 2022 08:27:03 -0700 (PDT)
Received: from skbuf ([188.25.161.207]) by smtp.gmail.com with ESMTPSA id
 k11-20020a17090632cb00b0072a881b21d8sm1121201ejk.119.2022.07.01.08.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Jul 2022 08:27:02 -0700 (PDT)
Date: Fri, 1 Jul 2022 18:27:00 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20220701152700.sf2h6wbxx6dgll7a@skbuf>
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yr778K/7L7Wqwws2@shredder>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Hans Schultz <hans@kapio-technology.com>, netdev@vger.kernel.org,
 Hans S <schultz.hans@gmail.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Nikolay Aleksandrov <razor@blackwall.org>
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

On Fri, Jul 01, 2022 at 04:51:44PM +0300, Ido Schimmel wrote:
> On Fri, Jul 01, 2022 at 09:47:24AM +0200, Hans S wrote:
> > One question though... wouldn't it be an issue that the mentioned
> > option setting is bridge wide, while the patch applies a per-port
> > effect?
> 
> Why would it be an issue? To me, the bigger issue is changing the
> semantics of "locked" in 5.20 compared to previous kernels.
> 
> What is even the use case for enabling learning when the port is locked?
> In current kernels, only SAs from link local traffic will be learned,
> but with this patch, nothing will be learned. So why enable learning in
> the first place? As an administrator, I mark a port as "locked" so that
> only traffic with SAs that I configured will be allowed. Enabling
> learning when the port is locked seems to defeat the purpose?

I think if learning on a locked port doesn't make sense, the bridge
should just reject that configuration.
