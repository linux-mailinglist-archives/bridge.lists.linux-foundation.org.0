Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C14606BD1
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 01:01:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A4C3400A6;
	Thu, 20 Oct 2022 23:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A4C3400A6
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Q56oC/qB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9ZU7NLJoE0r; Thu, 20 Oct 2022 23:01:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A7D1A404D1;
	Thu, 20 Oct 2022 23:01:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7D1A404D1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3EDE4C0078;
	Thu, 20 Oct 2022 23:01:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFB66C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 23:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B47C4155E
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 23:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B47C4155E
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Q56oC/qB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcEBQ-of3Uc1 for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 23:01:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E45441508
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E45441508
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 23:01:00 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id d26so3022134eje.10
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 16:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=KSyGYu5mB1+N4wjZMirWYKsm/OR0IsapLyRpo6UTXsY=;
 b=Q56oC/qBd5xz35WvyWQaS0SIowWdUGsQJGKXPYPkAnTa/HBtAJArmBFWpYa4LsxwZM
 dRlIx8DC4hBSeGgM//j/8NzY/dw+Mei+dUBUkDFIh3SWNbBNewoDZE8vZ/mFvCJkaweH
 0CKHQ+Vq2hMhLVz/iryTvkBEYh0mrRiBrB4oYDVCPYsjTyYcfL3/8OWk6wBEmwcnyunB
 bfZj7X3bwD0eLmPx25r+dHE2SgvNwcmrhiVxN7WFCmB6G9CggNc4ICHBDYecYO19eAPq
 BVOtx5Sl6l9g0jIebCbhH8xJIrdO3wx8ylyCdfSuAbVFe17RATgQJ8cNesesZpShl+Zx
 k8vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KSyGYu5mB1+N4wjZMirWYKsm/OR0IsapLyRpo6UTXsY=;
 b=Vq5VeLLX50hcZWBEdo/IMwbzszv0+wn2TqDmvaMMykksUjoKZt3Po2c4c7McKaKlBr
 LPCEEZMEUHdMD1N+sSYPdnCv4I2oaznbrJivAeugHdJ7OyYEyCr/7gE1gZ2msTZpThWG
 7fNFtsCm/rO14UNwJsSUnczCSpQPZfrlPxpod5jVtm1/lD7qVJZgBxRYBZemhCLk8qDj
 XWLC+jkFP7JItJwxRp3JHgs9DYtW7+X9qCsSny7EVC+xFCJsg1aCPFphaWgMkl/ly/ft
 TmxdZBUwzDTciS19FHJOe8Atp+RLIYpXJuj0LpypZ8MtRwTSFewB2a+dunCEggiQ7MxB
 ZEkw==
X-Gm-Message-State: ACrzQf24D/y2WxprClV5z5zkSalTxKsIH7eis52ftL5l7BZsn8VnZfLj
 U99k8w5xoBl/Y0V2e0BjeI8=
X-Google-Smtp-Source: AMsMyM6W8HBBWWLJ65JA6laSIwE+MvNKCBJ9YiwTN1w3VFyEQBNnKUt3QnC4rR1yG5+HdC0wZCFkKA==
X-Received: by 2002:a17:906:fd8d:b0:780:997:8b7b with SMTP id
 xa13-20020a170906fd8d00b0078009978b7bmr13065061ejb.635.1666306858463; 
 Thu, 20 Oct 2022 16:00:58 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 x24-20020a170906b09800b0078d46aa3b82sm10779489ejy.21.2022.10.20.16.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 16:00:57 -0700 (PDT)
Date: Fri, 21 Oct 2022 02:00:54 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221020230054.542nmf66rvaswr32@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
 <3e58594c1223f4591e56409cd5061de7@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e58594c1223f4591e56409cd5061de7@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

On Thu, Oct 20, 2022 at 11:09:40PM +0200, netdev@kapio-technology.com wrote:
> > Again, dsa_port_fast_age() is also called when dp->learning is turned
> > off in dsa_port_bridge_flags(). I don't want to see the mv88e6xxx driver
> > doing this manually.
> 
> Maybe I am wrong, but I have only been able to trigger fast ageing by setting
> the STP state of the port to blocked...

Maybe you didn't try hard enough? On a DSA bridge port that is up and in
the FORWARDING state and with 'learning' on, running "ip link set dev
swp0 type bridge_slave learning off" triggers dsa_port_fast_age().
