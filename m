Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD12704B0E
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 12:47:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74CF2402CE;
	Tue, 16 May 2023 10:47:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74CF2402CE
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=L+dTajnQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R_PwuVMI1gFZ; Tue, 16 May 2023 10:47:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 059B1409A6;
	Tue, 16 May 2023 10:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 059B1409A6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9F5B1C008A;
	Tue, 16 May 2023 10:47:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8CCA7C002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6169060F15
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6169060F15
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=L+dTajnQ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fu1bLt8KkBgE for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 10:47:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88EA460E81
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 88EA460E81
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 10:47:51 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-96b4ed40d97so315740766b.0
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 03:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1684234069; x=1686826069;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Js3YuPgss9QnQgb0ghb/7P0ksUMIVrx2im8eZEBPrko=;
 b=L+dTajnQeDtHHrVal8YzvGE5uYvGo+QGMEUc2KcrDnIEKFbEUgJEEqW29k+GjRVr2d
 35X1YcGFtg5YpAYrzHzORZjhnAS8QgOqQHnlhf4vQDXHVgF61gqErpVXt+aR7fy9Vk2/
 PZAI1w6yyrzaP+YvYAKRCaS0wi8I4qmkgHNZm1cHNDSIhvT6DHNy7LFa0wEDUPr1wABV
 XlrAwTt8BBhkC7rTlJW27pgqt3Kai1rKOQaa5EaJnEwS4go/o7cf7yta2SlAN3iRtuzD
 CFCz4MJ+VsHvH1JljS/Ou5RYgYZDkNoTDStEjglITU6PxrjApNwbg+tl84pcoOPRDsss
 bDMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684234069; x=1686826069;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Js3YuPgss9QnQgb0ghb/7P0ksUMIVrx2im8eZEBPrko=;
 b=N+B/vZ934yS6movEN6MrVXPEM4o1enP4GlYkR4nV30fJ7uXT5IQ+FolDllN98Lgrx0
 1zJQfbGAwnckDmWr4/peFJU12utMunl5P7A7qqGBMzmP4wFOYHRisOB2NM56s7+htqgC
 MQKdN7LLzXl1kweKpQeuBhGlV+lY3eMfOLP8Lm2ADTe9JO/l/B1dmnAnsT0vy5ZEdWMG
 XENMS/SHr4I0ArOPVt5rimT/qOfXtD3bKt7g+foBuHQA9olVj/M+SreoG71mqh1x6LkG
 gTiVkuJuurAS2ZKNXtdbvdzErRDZo+OvznzBBVdLgETxjbANjUTJeGPjtdWlBJJVJ2SS
 uR8g==
X-Gm-Message-State: AC+VfDzHk9mnn+IOExdfYKZ1tHvJoNJISFoflTU2wiYkQsvCPCubv1VZ
 wH/8kXxPCPhV/YnM3XJuYI1n9Q==
X-Google-Smtp-Source: ACHHUZ6t4tro4CCIk9USgYXdvc3t+cBkHaGNsbCWjB+hKdA78TGD9pSRG4wLWTiciZP1JzEFEdh5Eg==
X-Received: by 2002:a17:907:7251:b0:96a:1ab:b4a2 with SMTP id
 ds17-20020a170907725100b0096a01abb4a2mr26625215ejc.25.1684234069493; 
 Tue, 16 May 2023 03:47:49 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 z23-20020a17090674d700b0096ac911ecb8sm5375855ejl.55.2023.05.16.03.47.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 May 2023 03:47:48 -0700 (PDT)
Message-ID: <c05b5623-c096-162f-3a2d-db19ca760098@blackwall.org>
Date: Tue, 16 May 2023 13:47:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <a1d13117-a0c5-d06e-86b7-eacf4811102f@blackwall.org>
 <ZGNEk3F8mcT7nNdB@u-jnixdorf.ads.avm.de>
 <f899f032-b726-7b6d-953d-c7f3f98744ca@blackwall.org>
 <20230516102141.w75yh6pdo53ufjur@skbuf>
 <ce3835d9-c093-cfcb-3687-3a375236cb8f@blackwall.org>
 <20230516104428.i5ou4ogx7gt2x6gq@skbuf>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230516104428.i5ou4ogx7gt2x6gq@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Oleksij Rempel <linux@rempel-privat.de>, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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

On 16/05/2023 13:44, Vladimir Oltean wrote:
> On Tue, May 16, 2023 at 01:32:05PM +0300, Nikolay Aleksandrov wrote:
>> Let's take a step back, I wasn't suggesting we start with a full-fledged switchdev
>> implementation. :) I meant only to see if the minimum global limit implementation
>> suggested would suffice and would be able to later extend so switchdev can use and
>> potentially modify (e.g. drivers setting limits etc). We can start with a simple
>> support for limits and then extend accordingly. The important part here is to
>> not add any uAPI that can't be changed later which would impact future changes.
> 
> I guess adding a global per-bridge learning limit now makes sense and
> would not unreasonably hinder switchdev later on. The focus is on
> "learning limit" and not a limit to user-created entries as Johannes has
> currently done in v1. I don't necessarily see an urgent need for
> IFLA_BR_FDB_CUR_ENTRIES, given the fact that user space can dump the FDB
> and count what it needs, filtering for FDB types accordingly.

Having the current count is just a helper, if you have a high limit dumping the table
and counting might take awhile. Thanks for the feedback, then we'll polish and move
on with the set for a global limit.
