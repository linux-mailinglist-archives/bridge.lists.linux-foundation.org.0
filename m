Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAF457CA0C
	for <lists.bridge@lfdr.de>; Thu, 21 Jul 2022 13:54:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52091422BE;
	Thu, 21 Jul 2022 11:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52091422BE
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ACF8TqJG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hs0GwU3JUOHE; Thu, 21 Jul 2022 11:54:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8F8B541D41;
	Thu, 21 Jul 2022 11:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F8B541D41
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 41BEFC007D;
	Thu, 21 Jul 2022 11:54:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7AE00C002D
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:54:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E66A8402B
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:54:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E66A8402B
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ACF8TqJG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-uRlauVSWfv for <bridge@lists.linux-foundation.org>;
 Thu, 21 Jul 2022 11:54:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DE6D84020
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DE6D84020
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:54:52 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id mf4so2766406ejc.3
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 04:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c2k9Gs9aq7wD8Q/GIeDAjL6HQrb7wXOBzG+CfyfPzhY=;
 b=ACF8TqJG/PCVXLN/DfmbuzxuxGjPaw8maXBAuewHlJ9tumjTSGSDkhS2sVl3mLiHWH
 gCsWXSI0FmZsI34OPo09XlR6d0q73kcocEcWWkKGjzE3a/SnNxwefEu0fWJe685Ee1bh
 hr76tigPIOAmzmWMQbOcJl98m4kLXsEmHlFrh8NsMF6Wgk180kD1qEg0trdSvLAXMwBy
 m3yuAKekMn8UkwpXDJcG2Vu9OTQUQp0DWYtTLeXC54pTyG2QSdPeVLqWSbJ9mZD+WR0E
 Kn3/kl+f8xFbpe2MgcBwchwQdpRzPAIdytrWqM4CVkxx1m25gChgQcEbUAhWaqWj8AxP
 RQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c2k9Gs9aq7wD8Q/GIeDAjL6HQrb7wXOBzG+CfyfPzhY=;
 b=AgatIzMMCcdpX5AjVUYkcIERgyS5nyfIfBWRhe341C/M9dMHG03TKp7A9t3kxY6u+K
 1eB7TPezNGK3a7OhmKCYPsI5yeqyosUNUQz90bpDg8ZMRsr+IIrpEbTHSrvpqVZnPQrU
 SFn5hBMng4ZUZgGpuUCdPZGDLDdut7zeuAgDTMPao8EYLbySyZSMNCQjqwqLIqVcys9d
 3cQzdVxhYeHwQ8z9jPl13y6cJjLsP66iiTV7jfPkN+KSQjj+K7A4kMphZeIByFGlnI3T
 HATavvoBgwYg4C8a8N+fa2drIymDe7C+c6IMog68wfjFqqXkDSrFntCG+N871uv62V3V
 6ZgQ==
X-Gm-Message-State: AJIora8d4fMvcy6PR4VwAaDgZC2uRa17iHIZrtD9LX02T22btIKzbl/C
 vljINeOie+YFsYzjjdEZqag=
X-Google-Smtp-Source: AGRyM1sP7uU7BnTye1iWJUkXjwdHTa35FSpU/Q4kXU1vdqrQ7JS0A4/bkQTt5/kxqjiYmY2pRwPVgA==
X-Received: by 2002:a17:906:730a:b0:72f:6ce7:8acd with SMTP id
 di10-20020a170906730a00b0072f6ce78acdmr7574235ejc.233.1658404490767; 
 Thu, 21 Jul 2022 04:54:50 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 g2-20020a170906538200b0072b1bb3cc08sm788567ejo.120.2022.07.21.04.54.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 04:54:50 -0700 (PDT)
Date: Thu, 21 Jul 2022 14:54:47 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220721115447.cxfiromwtxw4ukv4@skbuf>
References: <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
 <20220717125718.mj7b3j3jmltu6gm5@skbuf>
 <a6ec816279b282a4ea72252a7400d5b3@kapio-technology.com>
 <20220717135951.ho4raw3bzwlgixpb@skbuf>
 <e1c1e7c114f0226b116d9549cea8e7a9@kapio-technology.com>
 <20220717150821.ehgtbnh6kmcbmx6u@skbuf>
 <480c7e1e9faa207f37258d8e1b955adc@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <480c7e1e9faa207f37258d8e1b955adc@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
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

On Sun, Jul 17, 2022 at 06:10:22PM +0200, netdev@kapio-technology.com wrote:
> Okay, I see the problem you refer to. I think that we have to accept some
> limitations unless you think that just zeroing the specific port bit in the
> DPV would be a better solution, and there wouldn't be caveats with that
> besides having to do a FDB search etc to get the correct DPV if I am not too
> mistaken.

No, honestly I believe that what we should do to improve the limitation
is to have proper ATU database separation between one VLAN-unaware
bridge and another (i.e. what is now MV88E6XXX_FID_BRIDGED to be one FID
per bridge).
