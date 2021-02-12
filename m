Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4377131A46C
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 19:19:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B02646F5B3
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 18:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eRzy1u6_P-7m for <lists.bridge@lfdr.de>;
	Fri, 12 Feb 2021 18:19:44 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3929A6F4D8; Fri, 12 Feb 2021 18:19:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73CE96F659;
	Fri, 12 Feb 2021 18:19:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C1A5C1DA9;
	Fri, 12 Feb 2021 18:19:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFEF0C013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C99AE86A7B
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Ow2Vv81rFJm for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 18:19:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE58D8699C
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 18:19:25 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id z21so198231pgj.4
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 10:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LjggpD0ZH/Pqu3nkvvYgvuE8A11ApMPMgPJmvgr5AOc=;
 b=hCYlf9Bd/xukRXSaj9KNSXuGNpdT3LKCCM8afVgruvN/IgilhYlrbApS/H5kvBac9C
 f20TZYDRynrncNa2dFQbzpnaMyHHr+xWjKtv9FDQlZmfm2C/Wltc7IRtcYTi2miEGQy6
 Yv93I3W90ML3E6FnkeThqAXXjA/jE9X1vEXaS1B+Q6NBKCU/tYWkg9qfXr4um3LOUMpj
 DZjUxQhM77V1uxArxyyFeuAQICGDypJmtORkXElLLX3Fs+JsOJsRDbSNoA9m9W92quiu
 gyzKcoG7JFOuySRWQrtnxJMAKARgb1I6Mt+AIhAb32l3YXdwLGkJNNfZo/YnnoptZAfT
 1hjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LjggpD0ZH/Pqu3nkvvYgvuE8A11ApMPMgPJmvgr5AOc=;
 b=LBvzjKliwfDOQTLgxkCz4qAnu4fglR7RSOYtN9pvGp1J6EMBg0Pf4S1RDkkfIrTm+6
 XpCrcvRALNF+wp7mvpB3XjeRCTq2SIzvHk8PFvc/7/AniAptokSAW06klW9VykLL5fdz
 o6kAMHAVhNlN1D9tLp7c3nKP/FBXXEsWy3DvMk/OHr4uSUaSDSvHOFUAAOR6uY6K1J+H
 B9uaIL87q7dJ5JX/uE/vQAH76Jue4a28l1e3xV8tDPqQRYhTvDa8ypZZElVmLKG9m2Iw
 T9XijbJXswhWkfJVGgYYC8STG4ven65j8lT3UNTscLj3axsl7lq93d8RA5YkeCchvYsz
 +pYg==
X-Gm-Message-State: AOAM530CZ348ruK1HHx3kbwOdTk73L2bW06ZY6T3MCEC6HJwJxsx1tqM
 FvX3JctUi39tDfycqsHnQ60=
X-Google-Smtp-Source: ABdhPJwUWkZNP1RymSaYKEK/YXsJ7CqqjBW+nAYgg7/2jvH1y7TsgdRhr0Er2w7QRW4OaHMs+VCEHA==
X-Received: by 2002:aa7:8f0a:0:b029:1de:4d20:8346 with SMTP id
 x10-20020aa78f0a0000b02901de4d208346mr4255553pfr.15.1613153965260; 
 Fri, 12 Feb 2021 10:19:25 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w19sm9842592pgf.23.2021.02.12.10.19.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Feb 2021 10:19:24 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210212151600.3357121-1-olteanv@gmail.com>
 <20210212151600.3357121-7-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <77072163-86e3-a6a5-350c-22bdab10d890@gmail.com>
Date: Fri, 12 Feb 2021 10:19:21 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210212151600.3357121-7-olteanv@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vignesh Raghavendra <vigneshr@ti.com>, Vadym Kochan <vkochan@marvell.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Ido Schimmel <idosch@idosch.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 06/10] net: dsa: act as passthrough
 for bridge port flags
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



On 2/12/2021 7:15 AM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> There are multiple ways in which a PORT_BRIDGE_FLAGS attribute can be
> expressed by the bridge through switchdev, and not all of them can be
> emulated by DSA mid-layer API at the same time.
> 
> One possible configuration is when the bridge offloads the port flags
> using a mask that has a single bit set - therefore only one feature
> should change. However, DSA currently groups together unicast and
> multicast flooding in the .port_egress_floods method, which limits our
> options when we try to add support for turning off broadcast flooding:
> do we extend .port_egress_floods with a third parameter which b53 and
> mv88e6xxx will ignore? But that means that the DSA layer, which
> currently implements the PRE_BRIDGE_FLAGS attribute all by itself, will
> see that .port_egress_floods is implemented, and will report that all 3
> types of flooding are supported - not necessarily true.
> 
> Another configuration is when the user specifies more than one flag at
> the same time, in the same netlink message. If we were to create one
> individual function per offloadable bridge port flag, we would limit the
> expressiveness of the switch driver of refusing certain combinations of
> flag values. For example, a switch may not have an explicit knob for
> flooding of unknown multicast, just for flooding in general. In that
> case, the only correct thing to do is to allow changes to BR_FLOOD and
> BR_MCAST_FLOOD in tandem, and never allow mismatched values. But having
> a separate .port_set_unicast_flood and .port_set_multicast_flood would
> not allow the driver to possibly reject that.
> 
> Also, DSA doesn't consider it necessary to inform the driver that a
> SWITCHDEV_ATTR_ID_BRIDGE_MROUTER attribute was offloaded, because it
> just calls .port_egress_floods for the CPU port. When we'll add support
> for the plain SWITCHDEV_ATTR_ID_PORT_MROUTER, that will become a real
> problem because the flood settings will need to be held statefully in
> the DSA middle layer, otherwise changing the mrouter port attribute will
> impact the flooding attribute. And that's _assuming_ that the underlying
> hardware doesn't have anything else to do when a multicast router
> attaches to a port than flood unknown traffic to it.  If it does, there
> will need to be a dedicated .port_set_mrouter anyway.
> 
> So we need to let the DSA drivers see the exact form that the bridge
> passes this switchdev attribute in, otherwise we are standing in the
> way. Therefore we also need to use this form of language when
> communicating to the driver that it needs to configure its initial
> (before bridge join) and final (after bridge leave) port flags.
> 
> The b53 and mv88e6xxx drivers are converted to the passthrough API and
> their implementation of .port_egress_floods is split into two: a
> function that configures unicast flooding and another for multicast.
> The mv88e6xxx implementation is quite hairy, and it turns out that
> the implementations of unknown unicast flooding are actually the same
> for 6185 and for 6352:
> 
> behind the confusing names actually lie two individual bits:
> NO_UNKNOWN_MC -> FLOOD_UC = 0x4 = BIT(2)
> NO_UNKNOWN_UC -> FLOOD_MC = 0x8 = BIT(3)
> 
> so there was no reason to entangle them in the first place.
> 
> Whereas the 6185 writes to MV88E6185_PORT_CTL0_FORWARD_UNKNOWN of
> PORT_CTL0, which has the exact same bit index. I have left the
> implementations separate though, for the only reason that the names are
> different enough to confuse me, since I am not able to double-check with
> a user manual. The multicast flooding setting for 6185 is in a different
> register than for 6352 though.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
