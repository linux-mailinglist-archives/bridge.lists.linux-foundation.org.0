Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D257C9F3
	for <lists.bridge@lfdr.de>; Thu, 21 Jul 2022 13:51:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92DB884076;
	Thu, 21 Jul 2022 11:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92DB884076
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=OGZ65YDJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cFwzOyc_FB4A; Thu, 21 Jul 2022 11:51:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0BFE88476E;
	Thu, 21 Jul 2022 11:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BFE88476E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9453FC007D;
	Thu, 21 Jul 2022 11:51:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D00C8C002D
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A37DF40635
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A37DF40635
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=OGZ65YDJ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xh1-AgdE7-Sx for <bridge@lists.linux-foundation.org>;
 Thu, 21 Jul 2022 11:51:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB41940135
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB41940135
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:51:22 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id ss3so2657818ejc.11
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 04:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GmDGNOSJLQLxHyqUbqdShMpk7Rg5vZOsES1osVYWvM8=;
 b=OGZ65YDJOY1TZJZnVZ0xSIYu44FSqV/GtlogNPVbdgVP4qeyYrQHHb6ra08gEteLzV
 Xza04ZqfmXuFmhOG2yubswI7rJYU6kah1KAk/PdYFcxZyIUiqrdeuYQK7JWkTWahv2Xx
 H+xG3OpXRv+ZsZ9rhioXX7uv2G6nrzfmTw7N3N0qOk9X/x9PqACbHtBuZasvnja9gYYF
 XGFgOoVVvydCpOFf0ll9jxiG+6G7lDcfGhK5m+DOx0uPlszpt/Sur2fiK2z/QmWdmkHp
 l+f6Bq9/k/W8I3XbHk5jPjUEsVz3hHt6datdIR1dhSigpWSaon9VR/EFMeMQbgLyiwqu
 SAzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GmDGNOSJLQLxHyqUbqdShMpk7Rg5vZOsES1osVYWvM8=;
 b=Eob9wgBHHJOjfHJBohd9zhTL5TgYwwyXgUOW3tleOHEOQqzHAsYLwzqmslvntkbFPy
 2EifHC/lka/4qGSn2MsBFgVgPGgLzNT8M/80X9m5JKdd4OMZ2Lru2M6JegbhRzh0UD8r
 hmpaJRWDcafwljt9gh51hlzKDbRIZyZTomVZz5yhglP0cnksStvhh/2rEl29oSzHlBxF
 viJflJ8gXOF9zjLtx23QJO5EQW9RCdWUstFvCYWT8CaxDqUVTPZvRn9k8V6aF5kT0Cwj
 HZ53fy3BTCqhMAczfIthtFksg5oy4KAt6L8p5jfJtIFGzfjH5M+deN9MQvfCfb20rAMe
 PX5w==
X-Gm-Message-State: AJIora+HKBebxUiU2vSsLhWmcjuuWoigOKAIfW4GDhteugXrswNJ82zP
 zlc05UcQA5iKn4NNAqvLq1U=
X-Google-Smtp-Source: AGRyM1suSHIrHuomtbcQyx39R4sEOccPsO0YKHzge8wgHA4N/CbmPmzndo1pH08PAhDMKhOryuKMBA==
X-Received: by 2002:a17:906:2086:b0:715:7983:a277 with SMTP id
 6-20020a170906208600b007157983a277mr39840337ejq.386.1658404280576; 
 Thu, 21 Jul 2022 04:51:20 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 15-20020a170906328f00b006fee98045cdsm814224ejw.10.2022.07.21.04.51.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 04:51:19 -0700 (PDT)
Date: Thu, 21 Jul 2022 14:51:16 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220721115116.5avmhghbmbbprq23@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-4-netdev@kapio-technology.com>
 <20220708084904.33otb6x256huddps@skbuf>
 <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
 <20220708091550.2qcu3tyqkhgiudjg@skbuf>
 <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On Fri, Jul 08, 2022 at 11:50:33AM +0200, netdev@kapio-technology.com wrote:
> On 2022-07-08 11:15, Vladimir Oltean wrote:
> > When the possibility for it to be true will exist, _all_ switchdev
> > drivers will need to be updated to ignore that (mlxsw, cpss, ocelot,
> > rocker, prestera, etc etc), not just DSA. And you don't need to
> > propagate the is_locked flag to all individual DSA sub-drivers when none
> > care about is_locked in the ADD_TO_DEVICE direction, you can just ignore
> > within DSA until needed otherwise.
> > 
> 
> Maybe I have it wrong, but I think that Ido requested me to send it to all
> the drivers, and have them ignore entries with is_locked=true ...

Yes, but re-read my message about what "all the drivers" means.
